\score {
	\new PipeBandDrumStaff = "staff_side" {
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 4/4
		\eighthBeaming

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
		composer = "nth time through: n drums play score, others: rolls"
	}
}
