\version "2.18.2"

\include "lilydrum.ly"

\drums {
	\time 6/8

	% Part 1
		\repeat volta 2 {
			\partial 8 d8 |
			\flamg g4 \flamd d8-> g8 \tuplet 3/2 { d32 g32 d32 } g8.-> |
			\tuplet 5/2 { d8 g d g d } g8-> d4.:32( |
			d8.) g16 \tuplet 3/2 { \flamd d32 d32 g16 d16 } g16 d16 g16 d16 \tuplet 3/2 { \flamg g32 g32 d16 g16 } |
			d16 g16 d16 g16 \flamd d8 \flamg g4 d8 |

			\break

			\flamg g4 \flamd d8-> g8 \tuplet 3/2 { d32 g32 d32 } g8.-> |
			\tuplet 5/2 { d8 g d g d } g8-> \flamd d8 \tuplet 3/2 { g8 d8 g8 } |
			\flamd d16 d16 g16 d16 g16 d16  \flamg g16 g16 d16 g16 d16 g16:32(-> |
			g8.:32)( d16) g8:32(-> d4)

		}

		\break

	% Part 2 ( Part 2.2 = Part 1)
		\repeat volta 2 {
			\tuplet 5/2 { d16 g d g d } |
			g8. d16 g8 d4.:32( |
			d16.) g32 d16 g16 d16 g16 d16 g16 d16 g16 d8 |
			\flamg g16.d32 g16 d16 \flamg g16 g16 \tuplet 3/2 { d16 g16 d16 } \flamg g8. d16 |
			g16 d16 \flamg g16 g16 \tuplet 3/2 { d16 g16 d16 } \flamg g8.d16 g8

			\break

			\flamg g8. d16 g8 d4.:32( |
			d16.) g32 d16 g16 d16 g16 d16 g16 d16 g16 d8 |
			\flamd d16 d16 g16 d16 g16 d16  \flamg g16 g16 d16 g16 d16 g16:32(-> |
			g8.:32)( d16) g8:32(-> d4)
		}
}% End of drums %

\header {
	title = "Hills of Glenorchy"
	meter = "March"
	composer = "G. Clark, 1977"
	instrument = "Side"
}