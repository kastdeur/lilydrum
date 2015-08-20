\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new DrumStaff {
		\drummode {
			\time 5/4
			\repeat volta 4 {
				d8-> g d g d-> g d4 d4 |
				d8. g16 d8-> g8-> r8 g8 d4 d4 |
				d8-> g d g d-> g d8.-> g16-> r8 d8-> |
				d4 d4 d8 g8 d4 d4 |

				d4 g4 d4 g4 d4 |
				d8. g16 d8-> g8-> r8 g8 d4 d4 |
				d4 g4 d8-> g8 d8.-> g16-> r8 d8->
				d4 d4 d8 g8 d4 d4 |
			}
		}
	}

	\header {
		title = "Cullen Bay"
		meter = "March"
		instrument = "Tenor"
	}
}