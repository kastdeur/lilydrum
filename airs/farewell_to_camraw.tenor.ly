\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new DrumStaff {
		\drummode {
			\time 4/4
			\repeat volta 2 {
				R1
				r8 g d16 g d g d8 g d16 g d g |
				d8 g d16 g d g d4 d16 g d g |
				d4 g16 d g d d4 r4 |
				d4 d8 g d4 r4 |
				d4 d8 g d4 r4 |
				d8 g d g d4 d8 g |
				d8 g r4 r2 |
			}
		}
	}

	\header {
		title = "Farewell to Camraw"
		meter = "Slow Air"
		instrument = "Tenor"
	}
}