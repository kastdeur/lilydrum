\version "2.18.2"

\include "lilydrum.ly"

\header {
		title = "Standards"
		instrument = "Bass"
	}

\score {
	\new PipeBandDrumStaff {
		\time 2/4
		\drummode {
			\repeat volta 2 {
				\repeat unfold 8 { d4-> g4 }
			}
		}
	}
	\header {
		title = "2/4 Standard"
	}
}
\score {
	\new PipeBandDrumStaff {
		\time 3/4

		\drummode {
			\repeat volta 3 {
				\repeat unfold 8 { d4-> g4 g4 }
			}
		}
	}
	\header {
		title = "3/4 Standard"
	}
}
\score {
	\new PipeBandDrumStaff {
		\time 4/4

		\drummode {
			\repeat volta 2 {
				\repeat unfold 8 { d4\v g4 d4-> g4}
			}
		}
	}
	\header {
		title = "4/4 Standard"
	}
}
\score {
	\new PipeBandDrumStaff {
		\time 6/8

		\drummode {
			\repeat volta 2 {
				\repeat unfold 8 { d4. g4. }
			}
		}
	}
	\header {
		title = "6/8 Standard"
	}
}