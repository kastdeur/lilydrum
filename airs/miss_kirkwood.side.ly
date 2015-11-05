\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \time 6/8

        \drummode {
			\repeat volta 2 {
				d4.:32(		d4)	g8 |
				\flamd d8 g16 d16-> g16 g16		d4.:32(\< |
				d8)\! \tuplet 3/2 { d16 g d } \flamg g8		d8:32( \tuplet 3/2 { d16) g d } \flamg g8 |
				d2.:32(\< |
			\break
				d8)\! \flamg g8. g16		d4:32( d8) |
				d8:32( d8.) g16		d4.:32( |
				d8) \tuplet 3/2 { d16 g d } \flamg g8		d8:32( g16) d16-> g16 g16 |
				d4.:32(		d4) r8
			}
			\break
			\repeat volta 2 {
				d4:32(	d8)		g8 d8:32( d8) |
				\flamd d8 g16 d16-> g16 g16		d4.:32(\< |
				d8)\! \tuplet 3/2 { d16 g d } \flamg g8		d8:32( \tuplet 3/2 { d16) g d } \flamg g8 |
				\dragd d16 d16-> g16 g16 \flamd d8		d8:32( d8) g8 |
			\break
				d4:32(	d8)		g8 d8:32( d8) |
				\flamd d8 g16 d16-> g16 g16		d4.:32(\< |
				d8)\! \tuplet 3/2 { d16 g d } \flamg g8		d8:32( g16) d16-> g16 g16 |
				d4.:32(		d4) r8
			}
		}% End of drums %
	}
	\header {
		title = "Miss Kirkwood"
		meter = "Slow Air"
		composer = ""
		instrument = "Side"
	}
}