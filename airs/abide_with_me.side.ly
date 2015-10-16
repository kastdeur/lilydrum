\score {
	\new DrumStaff = "staff_side" {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 4/4
		\eighthBeaming
		%\markup{ 1st time through rolls, n+1th time: n drums play score}
		\drummode {
			\repeat unfold 3{
				\flam  d8->) \! \triplet { d16 g d }	g8 \flam d->	r8 \flam d	r8 g |
				\flam  d8-> \triplet { d16 g d }	g8 \flam d->	r8 \flam d	r8 g |
				\flam  d8-> \triplet { d16 g d }	\flam  d8-> \triplet { d16 g d }	\flam  d8-> \triplet { d16 g d }	\flam g8 \flam g-> |
				d4:32( \<	d4:32)(	d4:32)(	d4:32)( \! \> |

				\break
			}
			\break
			\flam  d8->) \! \triplet { d16 g d }	g8 \flam d->	r8 \flam d	r8 \flam g |
			\flam  d8->\< \triplet { d16 g d }	\flam  d8-> \triplet { d16 g d }	\flam  d8-> \triplet { d16 g d }	\flam g8[ \drag g]->\! |
			d4:32( \>	d4:32)(	d4:32)(	d4:32)( |
			d4:32)( \<	d4:32)(	d4:32)(	d4:32) \!

		}

	}
	\header {
		title = "Abide with Me"
		meter = "Hymn"
	}
}
