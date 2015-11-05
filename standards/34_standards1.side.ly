\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \eighthBeaming
        \time 3/4

		\drummode {
        	\repeat volta 2{
				\flamd d8 d8:32(	g8) d8:32(	d8:32)( d8) |
				\flamd d8 d8:32(	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(	g8) d8:32(	d8:32)( d8) |
				\flamd d4	d4:32(	d4)
			}
		\break
			\repeat volta 2{
				\flamd d8 d8:32(	g8) d8:32(	g16.) d32-> g16. g32 |
				\flamd d8 d8:32(	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(	g8) d8:32(	g16.) d32-> g16. g32 |
				\flamd d4	d4:32(	d4)
			}

		\break
			\repeat volta 2{
				\flamd d8 d8:32(	g8) \flamd d8	d16 \flamg g8 d16 |
				\flamd d8 d8:32(	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(	g8) \flamd d8	d16 \flamg g8 d16 |
				\flamd d4	d4:32(	d4)
			}

		\break
			\repeat volta 2{
				\flamd d8 d8:32(	g8) \flamd d8	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(	g8) \flamd d8	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d4	d4:32(	d4)
			}

		\break
			\repeat volta 2{
				\flamd d8 d8:32(	g8) \flamd d8	d8:32( d8) |
				\flamd d8 d8:32(	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(	g8) \flamd d8	d8:32( d8) |
				\flamd d4	d4:32(	d4)
			}

		\break
			\repeat volta 2{
				\flamd d8 d8:32(	g16.) g32 \flamd d16. g32	d16. \flamg g32 d16. g32 |
				\flamd d8 d8:32(	\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32	\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(	g16.) g32 \flamd d16. g32	d16. \flamg g32 d16. g32
				\flamd d4	d4:32(	d4)
			}
		}% End of drums %
	}
	\header {
		title = "3/4 Standards\nSetting 1"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}