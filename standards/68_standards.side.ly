\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \time 6/8

        \drummode {
        	\repeat volta 2{
				\partial 8 g8 |
				\flamd d4 d8:32(	g4) d8:32( |
				g8.) g16 d8		\flamd d8. g16 d8 |
				\flamd d8. g16 d8		d4.:32( |
				d8.) g16 d8		\flamd d4 g8 |
				\flamd d4 d8:32(	g4) d8:32( |
				g8.) g16 d8		\flamd d8. g16 d8 |
				\flamd d8. d16:64( d8)		d4.:32( |
				d8.) g16 d8		\flamd d4
			}
		\break
        	\repeat volta 2{
				\partial 8 g8 |
				d8:32( d8) g8		d8:32( d8) g8 |
				\flamd d8 d8:32( d8)		d8:32( d8) g8 |
				\flamd d8. g16 d8		d4.:32( |
				d8.) g16 d8		\flamd d4 g8 |
				d8:32( d8) g8		d8:32( d8) g8 |
				\flamd d8 d8:32( d8)		d8:32( d8) g8 |
				\flamd d8. d16:64( d8)		d4.:32( |
				d8.) g16 d8		\flamd d4
			}
		\break
        	\repeat volta 2{
				\partial 8 g8 |
				d4.:32(\<		d4.:32)( |
				d8.)\! g16 d8		\flamd d8. g16 d8 |
				\flamd d8. g16 d8		d4.:32( |
				d8.) g16 d8		\flamd d4 g8 |
				d4.:32(\<		d4.:32)( |
				d8.)\! g16 d8		\flamd d8. g16 d8 |
				\flamd d8. d16:64( d8)		d4.:32( |
				d8.) g16 d8		\flamd d4
			}
		\break
        	\repeat volta 2{
				\partial 8 d8:32( |
				g8.) g16 \flamd d8		d8. d16 \flamg g8 |
				d8. g16 \flamd d8		\flamd d8. g16 d8 |
				\flamd d8. g16 d8		d4.:32( |
				d8.) g16 d8		\flamd d4 g8:32( |
				g8.) g16 \flamd d8		d8. d16 \flamg g8 |
				d8. g16 \flamd d8		\flamd d8. g16 d8 |
				\flamd d8. d16:64( d8)		d4.:32( |
				d8.) g16 d8		\flamd d4
			}
		\break
        	\repeat volta 2{
				\partial 8 d8:32( |
				\tuplet 3/2 { g8) d g } \flamd d8		\tuplet 3/2 { g8 d g } \flamd d8 |
				\tuplet 3/2 { d8 g d-> }		\tuplet 3/2 { g8 d g } \tuplet 3/2 { \flamd d8 g8. d16 } |
				\flamd d8. g16 d8		d4.:32( |
				d8.) g16 d8		\flamd d4 d8:32( |
				\tuplet 3/2 { g8) d g } \flamd d8		\tuplet 3/2 { g8 d g } \flamd d8 |
				\tuplet 3/2 { d8 g d-> }		\tuplet 3/2 { g8 d g } \tuplet 3/2 { \flamd d8 g8. d16 } |
				\flamd d8. d16:64( d8)		d4.:32( |
				d8.) g16 d8		\flamd d4
			}
		\break
        	\repeat volta 2{
				\partial 8 g8 |
				d4.:32(\<		d4.:32)( |
				d16)\!\< g d g d8\!		\flamd d8. g16 d8 |
				\flamd d8. g16 d8		d4.:32( |
				d8.) g16 d8		\flamd d4 g8 |
				d4.:32(\<		d4.:32)( |
				d16)\!\< g d g d8\!		\flamd d8. g16 d8 |
				\flamd d8. d16:64( d8)		d4.:32( |
				d8.) g16 d8		\flamd d4
			}
		}% End of drums %
	}

	\header {
		title = "6/8 Standards"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}