\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 4/4

				\repeat volta 2{
					\partial 8 d8:32( |
					g8.) g16		d8:32( g8)		d4:32(		d8) d8:32( |
					g8) \tuplet 3/2 { d16 g d-> }		g16. g32 d8		\flamg g4		d8:32( g8:32)( |
					d4)		d8:32(-> \tuplet 3/2 { g16) d g }		\flamd d16. g32 d16. g32		\flamd d8 d8:32( |
					d4)->		d4:32(		d4)		d4:32( |
				\break
					g8.) g16		d8:32( g8)		d4:32(		d8) d8:32( |
					g8) \tuplet 3/2 { d16 g d-> }		g16. g32 d8		\flamg g4		d8:32( g8:32) |
					\flamd d8 \tuplet 3/2 { g16 d g }	d8:32(-> g8:32)(->		\tuplet 3/2 { d16) g d } \flamg g8		\flamd d8 g8:32( |
					d4)->		d4:32(		d4)		r8
				}
				\break
				\repeat volta 2{
					\partial 8 r8|
					d4:32(		d8) d32 g d g		d32 g d g d8		\flamg g8 d8:32( |
					g8) \tuplet 3/2 { d16 g d-> }		g16. g32 d8		d4:32(		g8:32)(-> d8:32)(-> |
					d4)		r4		r4		r4 |
					d8.:32(-> g16)		d8:32(-> g8)->		d32 g d g d16. g32->		r16 g16-> r16 g16-> |
				\break
					g8.:32(-> g16)		d8:32(-> g8)		d4:32(		d8) d8:32( |
					g8) \tuplet 3/2 { d16 g d-> }		g16. g32 d8		\flamg g4		d8:32( g8:32) |
					\flamd d8 \tuplet 3/2 { g16 d g }	d8:32(-> g8:32)(->		\tuplet 3/2 { d16) g d } \flamg g8		\flamd d8 g8:32( |
					d4)->		d4:32(		d4)		r8
				}

    }% End of drums %

	\header {
		title = "Flett from Flotta"
		meter = "March"
		composer = ""
		instrument = "Side"
	}
}