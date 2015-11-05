\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \eighthBeaming
        \time 3/4

		\drummode {
			\repeat volta 2{
				\flamd d8 d8:32(		d8:32)(-> g8:32)(->		g8:32)( d8:32)(-> |
				d8) d8:32(		\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32		\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(		d8:32)(-> g8:32)(->		g8:32)( d8:32)(-> |
				d4)		d4:32(		d4)
			}

		\break
			\repeat volta 2{
				\flamd d8 d8:32(		g16.) d32:128( d16.) g32		g8:32( g8) |
				\flamd d8 d8:32(		\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32		\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(		g16.) d32:128( d16.) g32		g8:32( g8) |
				\flamd d4		d4:32(		d4)
			}

		\break
			\repeat volta 2{
				\flamd d8 d8:32(		g8) \flamg g8		d16 d d d |
				\flamd d8 d8:32(		\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32		\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(		g8) \flamg g8		d16 d d d
				\flamd d4		d4:32(		d4)
			}

		\break
			\repeat volta 2{
				\flamd d8 d8:32(		g8) \flamg g8		r16 r16 d16 d |
				\flamd d8 d8:32(		\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32		\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d8:32(		g8) \flamg g8		r16 r16 d16 d |
				\flamd d4		d4:32(		d4)
			}

		\break
			\repeat volta 2{
				\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32		\flamd d16. g32 d16. g32 |
				\flamd d8 d8:32(		\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32		\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32		\flamd d16. g32 d16. g32 |
				\flamd d4		d4:32(		d4)
			}
		\break
			\repeat volta 2{
				\flamd d8 d32 g d g		d8  d32 g d g		d16. g32-> d16. d32 |
				\flamd d8 d8:32(		\tuplet 3/2 { g16) d16 g16 } \flamd d16. g32		\tuplet 3/2 { d16 g16 d16 } \flamg g8 |
				\flamd d8 d32 g d g		d8  d32 g d g		d16. g32-> d16. d32 |
				\flamd d4		d4:32(		d4)
			}
		}% End of drums %
	}

	\header {
		title = "3/4 Standards\n Setting 3"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}