\version "2.18.2"

\include "lilydrum.ly"

\score {
	\drums {
		\time 2/4

		% Part 1
			\repeat volta 2 {
				\partial 8 d8:32( |
				g16.) \parenthesize g32 \flamd d16. g32 d16. \flamg g32 d16. g32 |
				\flamd d16. \parenthesize g32 \flamd d16. g32 d16. \flamg g32 d16. g32 |
				\flamd d8 d32 g32 d32 g32 d4 |
				r4^\markup {\bold HOI} d8:32( g8:32)(-> |

				\break

				d16.) \parenthesize g32 \flamd d16. g32 d16. \flamg g32 d16. g32 |
				\flamd d16. \parenthesize g32 \flamd d16. g32 d16. \flamg g32 d16. g32 |
				\flamd d4 d4:32( |
				d8) \flamg g8 \flamd d8

			}

			\break

		% Part 2 ( Part 2.2 = Part 1)
				d8
				d4:32( d4:32)( |
				d8) g16. d32-> g16. g32 \flamd d16. g32 |
				d4:32( d4:32)( |
				d8) g16. d32-> g16. g32 \flamd d16. g32 |

				\break

				d4:32( d8.:32)( g16:32)( |
				d8:32)( g8:32)( d4)( |
				g8:32)( d8:32)( g16.) d32-> g16. g32 |
				\flamd d8 d8:32( g8) \bar "|."

	}% End of drums %

	\header {
		title = "Black Bear"
		meter = "March"
		composer = "E.T. de Boone, 2015"
		instrument = "Side"
	}
}