\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 4/4

		\repeat volta 2 {
			\partial 8 r8
			\flamd d4		\flamg g8.[ d16:64(]		d8.[) \dragg g16]		d8.[ g16] |
			d8.:64[( g16])		\tuplet 3/2 { d16[ g d g d8]}		\tuplet 3/2 { g8[ d8 \flamg g8] }		\flamd d8.[ g16] |

			d16:64[( d8.])		g8.[ \dragd d16]		\tuplet 3/2 { d16[ g d g d8] }		g8.[ g16] |
			\tuplet 3/2 { \flamd d8[ g d] }		\flamg g8.[ \flamg g16]		\tuplet 3/2 { d16[ g d g d8] } g8
		}
		\break
			\partial 8 g8 |
			d4:32(		d8.[) \dragd d16]		\tuplet 3/2 { d16[ g d g d g8] }		g8.[ g16] |
			\dragd d16[ d8.]		\flamd d8.[ \flamg g16]		\tuplet 3/2 { d16[ g d g d8] }		\tuplet 3/2 { g8[ d g] } |

			\tuplet 3/2 { \flamd d8[ g16 g16 d8] }		g8.[ g16]		\tuplet 3/2 { d8[ g16 g16 d8] }		g8.[ g16] |
			\tuplet 3/2 { \flamd d8[ g d] }		\flamg g8.[ \flamg g16]		\tuplet 3/2 { d16[ g d g d8] } g8 |
		\break
			\partial 8 g8 |
			d4:32(		d8.[) \dragd d16]		\tuplet 3/2 { d16[ g d g d g8] }		g8.[ g16] |
			\dragd d16[ d8.]		\flamd d8.[ \flamg g16]		\tuplet 3/2 { d16[ g d g d8] }		\tuplet 3/2 { g8[ d g] } |

			\flamd d4		\flamg g8.[ d16:64](		d8.[) \dragg g16]		d8.[ g16] |
			\tuplet 3/2 { \flamd d8[ g d] }		\flamg g8.[ \flamg g16]		\tuplet 3/2 { d16[ g d g d8] } g8 |

		\bar "|."
    }% End of drums %

	\header {
		title = "Molly Connell"
		meter = "Strathspey"
		composer = ""
		instrument = "Side"
	}
}