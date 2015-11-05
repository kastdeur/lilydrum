\score {
	\new PipeBandDrumStaff = "staff_side" {
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 4/4
		\eighthBeaming

		\drummode {
			\repeat volta 2 {
				\partial 8 d16. g32 |
				d32-> g d g->  d-> g d g	d g d-> g  d g d g	d-> g d g  d-> g d g	d8-> d8:32( |
				\tuplet 3/2 { g16) d g }  \flam d16. g32 	\tuplet 3/2 { d16 g d }  \flam g16. g32		d16. g32 \tuplet 3/2 { d16 g d }  \flam d8 r8 |
				d32-> g d g->  d-> g d g	d g d-> g  d g d g	d-> g d g  d-> g d g	d8-> d8:32( |
				g4)	d4:32(	d4) 	r8 g8 |
			\break
				d2:32(\<	d4)\!	r8 g8 |
				d8:32( g8)	g8 d8:32(	d8) r8	r8 g8 |
				\flam d8 g16. d32-> 	g16. g32 \flam d16. g32 	\flam d16. d32:128( d16) g16-> 	d16 g d \flam d  |
				d4 d4:32( d4) r8
			}
		}
	}
	\header {
		title = "We're No' Awa Tae Bide Awa"
		meter = "March"
	}
}