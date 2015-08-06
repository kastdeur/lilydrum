\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 3/4
        	\repeat volta 2{
				\flamd d8. g16		d4:32(		d8) d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d8		\flamd d4		d4:32( |

				d8.) g16		d8:32(-> \tuplet 3/2 { g16) d g }		d8:32(-> g8:32)(-> |
				\tuplet 3/2 { d16) g d-> } g16. g32		\flamd d8 d8:32(	g16.) d32-> g16. g32 |
			\break
				\flamd d8.^"2 of 2" g16		d4:32(		d8) d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d8		d4:32(		d4) |

				\flamd d8. g16		d4:32(		d8:32)(-> \tuplet 3/2 { g16) d g } |
				d16. d32 \flamg g8		d4:32(		d4)
			}
		\break
        	\repeat volta 2{
				d16[ \dragg g8 g16]		d8:32( g8)		d4:32( |
				\tuplet 3/2 { d16) g d-> } g16. g32		\flamd d4		d4:32( |

				d8.) g16		d8:32(-> \tuplet 3/2 { g16) d g }		d8:32(-> g8:32)(-> |
				\tuplet 3/2 { d16) g d-> } g16. g32		\flamd d8 d8:32(	g16.) d32-> g16. g32 |
			\break
				d8.^"1 of 2" g16		d8:32( g8)		d4:32( |
				\tuplet 3/2 { g16) d g } \flamd d8		d4:32(		d4) |

				\flamd d8. g16		d4:32(		d8:32)(-> \tuplet 3/2 { g16) d g } |
				d16. d32 \flamg g8		d4:32(		d4)
			}
		\break
    }% End of drums %

	\header {
		title = "On the Road to Passchendaele"
		meter = "Retreat"
		composer = ""
		instrument = "Side"
	}
}