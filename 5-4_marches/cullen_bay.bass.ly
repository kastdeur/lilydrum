\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new DrumStaff {
		\time 5/4
		\repeat volta 2 {
			\repeat unfold 8 {	d4-^ g d-> g d | }
		}
	}

	\header {
		title = "Cullen Bay"
		meter = "March"
		instrument = "Bass"
	}
}