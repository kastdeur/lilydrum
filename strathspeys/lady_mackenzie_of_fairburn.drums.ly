%%%% SNARE DRUM %%%%
snareA = \drummode {
				{\flam d8.} g16
				d8.:32( g16)
				\flam d8 \< \triplet {d16 g d }
				\flam g4-> \!
				|
				\triplet { d16 g d g d8 }
				\triplet { g8-> d g-> }
				d8.:32(-> g16:64)(->
				d4)
				|
				\triplet { d8 d g }
				\flam d8. g16
				\triplet { d16 g d g d8 }
				g8 g8
				|
				d8[:32( g8]:32)(->
				d8[:32)( g8]:32)(->
				d8[:32)( g8]:32)(->
				d8.) s16
		}
snareBA = \drummode{
				g16 |
				\triplet {d8 g \flam d}
				\triplet {g d \flam g}
				\triplet {d8 g \flam d}
				\flam g8. g16
				|
				\flam d16. d32 \flam g8
				d8:32( g8:32)(->
				d16.) g32 d8
				\flam d8. g16
				|
				\drag d16 d8.
				d4:32(
				\triplet { d16) g d g d8}
				g8. g16
				|
				d8[:32( g8]:32)(->
				d8[:32)( g8]:32)(->
				d8[:32)( g8]:32)(->
				d8.) s16
		}
snareBB = \drummode{
				g16 |
				\triplet {d8 g \flam d}
				\triplet {g d \flam g}
				\triplet {d8 g \flam d}
				\flam g8. g16
				|
				\flam d16. d32 \flam g8
				d8:32( g8:32)(->
				d16.) g32 d8
				\flam d8. g16
				|
				{\flam d8.} g16
				d8.:32( g16)
				\flam d8 \< \triplet {d16 g d }
				\flam g4-> \!
				|
				d8[:32( g8]:32)(->
				d8:32)( g8]:32)(->
				d4:32)(->
				d4)

		}
%%%% BASS DRUM %%%%
bassA = \drummode {
				bd4 bd4-> r4 bd4
				|
				bd4-> r4 bd4 r4
				|
				bd4-> bd4 r4 bd4
				|
				bd4 r4 bd4-> bd4
		}
bassBA = \drummode {
				s16 |
				s1*4
		}
bassBB = \drummode {
				s16 |
				s1*4
			}
%%%% TENOR DRUM %%%%
tenorA = \drummode {
				d8.[ g16]
				d4^\splitTheFeather
				r4
				<< d4 g4 >>
				| \flourish{
				d4
				g4
				d4
				g4
				} |
				d4
				r16 g d-> r
				r8. g16
				d4
				|
				d4
				g4
				d4
				r4
			}
tenorBA = \drummode {
				s16 |
				s1^\bfly s1
				s1*2
			}
tenorBB = \drummode {
				s16 |
				s1*4
			}

formatA = { % Part 1
		\repeat volta 2 {
			\repeat unfold 4 { s1 | }
		}
		\break
		}
formatBA = { % Part 2.1
		\partial 16 s16 |
		\repeat unfold 4 { s1 | }
		\break
		}

formatBB = { % Part 2.2
		\partial 16 s16 |
		\repeat unfold 4 { s1 | }
		\bar "|."
}

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff {
			\set PipeBandDrumStaff.instrumentName = #"Side "
			\set PipeBandDrumStaff.shortInstrumentName = #"S.D. "
			<<
			{\formatA \formatBA \formatBB}
			{
			 \snareA
			 \snareBA \snareBB
			}
			>>
		}
		\new DrumStaff {
			\set DrumStaff.instrumentName = #"Bass "
			\set DrumStaff.shortInstrumentName = #"B.D. "

			\bassA
			\bassBA \bassBB
		}
		\new DrumStaff {
			\set DrumStaff.instrumentName = #"Tenor "
			\set DrumStaff.shortInstrumentName = #"T.D. "

			\tenorA
			\tenorBA \tenorBB
		}
	>>
	\header {
		title = "Lady MacKenzie of Fairburn"
		meter = "Strathspey"
		composer =  "E.T. de Boone"
	}
}
