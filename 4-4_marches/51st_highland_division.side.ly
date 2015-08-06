\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 4/4

		\repeat volta 2 {
				\partial 8 d16. g32 |
				d4:32(		d8.) g16		\flamd d8 d8:32(		g8) d8:32( |
				g8.) g16		\flamd d8 \flamg g8		d4:32(->		d8.)-> g16 |


		}
		\alternative {
			{
				d8:32(-> g8)		r8 d8:32(		g8) g16. d32->		g16. g32 \flamd d8 |
				\flamg g4		d4:32(		d4) r8
			}
			{
				d8:32(-> g8)		\flamd d8 d8:32(		\tuplet 3/2 { g16) d g } \flamd d16. g32->		d16. d32 \flamg g8 |
				\flamg g4		d4:32(		d4) r8
			}
		}

        \break
				d16. g32 |
				d8:32(-> \tuplet 3/2 { g16) d g }		d8:32(-> g8:32)(->		\tuplet 3/2 { d16) g d } \flamg g8		\flamd d8 d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32->		\tuplet 3/2 { d16 g d } \flamg g8		d4:32(->		d8.)-> g16 |

				d8:32(-> g8)		r8 d8:32(		g8) g16. d32->		g16. g32 \flamd d8 |

			\set Timing.measureLength = #(ly:make-moment 7/8)
				\flamg g4		d4:32(		d4) r8

		\break
			\set Timing.measureLength = #(ly:make-moment 1/8)
				d16. g32 |
			\set Timing.measureLength = #(ly:make-moment 4/4)
				d4:32(		d8.) g16		\flamd d8 d8:32(		g8) d8:32( |
				g8.) g16		\flamd d8 \flamg g8		d4:32(->		d8.)-> g16 |

				d8:32(-> g8)		\flamd d8 d8:32(		\tuplet 3/2 { g16) d g } \flamd d16. g32->		d16. d32 \flamg g8 |
				\flamg g4		d4:32(		d4) r8
    }% End of drums %


}\header {
		title = "51st Highland Division"
		meter = "March"
		composer = ""
		instrument = "Side"
	}