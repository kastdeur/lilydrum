\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \eighthBeaming
        \time 2/4

		\drummode {
        	\repeat volta 2{
				\partial 8 d16. g32 |
				\flamd d8 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32(		g16.) d32-> g16. g32		\flamd d8 d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
				\flamd d8 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32(		g16.) d32-> g16. g32		\flamd d8 d8:32( |
				g8) \flamd d16. g32		d16. \flamg g32 d16. g32 |
				\flamd d8 d8:32( g8)
			}
		\break
        	\repeat volta 2{
				\partial 8 d16. g32 |
				d4:32(		d8) \flamg g8		d16. g32-> d16. d32		\flamg g8 d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
				d4:32(		d8) \flamg g8		d16. g32-> d16. d32		\flamg g8 d8:32( |
				g8) \flamd d16. g32		d16. \flamg g32 d16. g32 |
				\flamd d8 d8:32( g8)
			}
		\break
        	\repeat volta 2{
				\partial 8 d16. g32 |
				\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32		d16. \flamg g32 d16. d32		\flamg g8 d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
				\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32		d16. \flamg g32 d16. d32		\flamg g8 d8:32( |
				g8) \flamd d16. g32		d16. \flamg g32 d16. g32 |
				\flamd d8 d8:32( g8)
			}
		\break
		% LINE 4
        	\repeat volta 2{
				\partial 8 d16. g32 |
				\flamd d8. g16		\flamd d8 d8:32(		d16.) g32-> d16. d32		\flamd d8 d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
				\flamd d8. g16		\flamd d8 d8:32(		d16.) g32-> d16. d32		\flamd d8 d8:32( |
				g8) \flamd d16. g32		d16. \flamg g32 d16. g32 |
				\flamd d8 d8:32( g8)
			}
		\break
        	\repeat volta 2{
				\partial 8 d16. g32 |
				d4:32(		d8) d8:32(		d8:32)( d16.) g32		\flamd d8 d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
				d4:32(		d8) d8:32(		d8:32)( d16.) g32		\flamd d8 d8:32( |
				g8) \flamd d16. g32		d16. \flamg g32 d16. g32 |
				\flamd d8 d8:32( g8)
			}
		\break
        	\repeat volta 2{
				\partial 8 d16. g32 |
				\tuplet 3/2 { d16 g d } \flamg g8		\tuplet 3/2 { d16 g d } g8		d16. g32-> d16. d32		\flamd d8 d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
				\tuplet 3/2 { d16 g d } \flamg g8		\tuplet 3/2 { d16 g d } g8		d16. g32-> d16. d32		\flamd d8 d8:32( |
				g8) \flamd d16. g32		d16. \flamg g32 d16. g32 |
				\flamd d8 d8:32( g8)
			}
		}% End of drums %
	}
	\header {
		title = "2/4 Standards"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}