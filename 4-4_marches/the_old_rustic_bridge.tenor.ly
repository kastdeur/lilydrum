\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new PipeBandDrumStaff {
		\drummode {
			\time 4/4
			\eighthBeaming

			\repeat volta 2 {
				\partial 16 g16 |
				d4 g8 d g4 d8. g16 |
				d8 g d4 g r |
				d4 g8 d g d g d |
				g4 r4 d4 r4 |

				d4 g8 d g4 d8. g16 |
				d8 g d4 g r |
				d4 g8 d g d g d |
				g4 r4 d4 r4
			}
		}
	}

	\header {
		title = "The Old Rustic Bridge"
		meter = "March"
		instrument = "Tenor"
	}
}