pipesA = {
			d16 |
			\dblc c8. e16
			\dblA A4
			g16 f16 e8
			\dblA A4
			|
			\hdblc c8. e16
			\dblA A8. d16
			\dblc c8. b16
			\grg a8. d16
			|
			\dblc c8. e16
			\dblA A4
			g16 f e8
			\dblg g4
			|
			\thrwd d8. e16
			\dblg g8. d16
			\dblb b8. a16
			\grg a8. s16
			 }
pipesBA = {
			d16 |
			a8. \grd c16
			\dble e8. a16
			\grg f8. a16
			\dble e4
			|
			\grg a8. \grd c16
			\dble e8. d16
			\dblc c8. b16
			\grg a8. A16
			|
			a8. \grd c16
			\dble e8. a16
			\grg f8. a16
			\dble e8. c16
			|
			\thrwd d8. e16
			\dblg g8. d16
			\dblb b8. a16
			\grg G8. s16
}
pipesBB = {
			A16 |
			a8. \grd c16
			\dble e8. a16
			\grg f8. a16
			\dble e4
			|
			\grg a8. \grd c16
			\dble d8. d16
			\dblc c8. b16
			\grg a8. A16
			|
			a8. \grd c16
			\grg e8. A16
			\hdblf g8. d16
			\dble e8. c16
			|
			\thrwd d8. e16
			\dblg g8. d16
			\dblb b8. a16
			\grg G8. s16

}
snareA = \drummode {
				s16 |
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
bassA = \drummode {
				s16 |
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
tenorA = \drummode {
				s16 |
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
				s1*2
				s1*2
			}
tenorBB = \drummode {
				s16 |
				s1*4
			}
formatA = { % Part 1
		\repeat volta 2 {
			\partial 16 s16 |
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
		\new Staff {
			\bagpipeKey
			\set Staff.instrumentName = #"Pipes "
			\set Staff.shortInstrumentName = #"P. "

			\override KeySignature.stencil = ##f

			<<
			{\formatA \formatBA \formatBB}
			{\pipesA \pipesBA \pipesBB}
			>>
		}
		\new PipeBandDrumStaff {
			\set DrumStaff.instrumentName = #"Side "
			\set DrumStaff.shortInstrumentName = #"S.D. "

			\snareA
			\snareBA \snareBB
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
