\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new PipeBandDrumStaff {
		\drummode {
			\time 6/8
			\repeat volta 2 {
				d4. g |
				d4. g8 r8 g8 |
				d4. g8. d16 g8 |
				d8. g16 d8 g8 r8 g8 |
				d4. g |
				d4. g8 r8 g8 |
				d4. g8. d16 g8 |
				d8 g8 d8 g8 r4
			}
			\repeat volta 2 {
				d4. g |
				d4. g8 r8 g8 |
				d4. g |
				d4. g8 r8 g8 |
				d4. g |
				d4. g8 r8 g8 |
				r8. g16 d8 r8. d16 g8 |
				d8 g8 d8 g8 r4
			}
		}
	}

	\header {
		title = "The Mist Covered Mountains"
		meter = "Slow Air"
		instrument = "Tenor"
	}
}