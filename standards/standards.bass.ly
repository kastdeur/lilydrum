\version "2.18.2"

\include "lilydrum2.ly"

\header {
	meter = "March"
	instrument = "Bass"
}

\markup "2/4 Standards"
\score {
	\new DrumStaff {
		\time 2/4
		\repeat volta 2 {
			\repeat unfold 8 { d4-> g4 }
		}
	}

	\header {
		title = "2/4 Standards"
	}
}

\markup "3/4 Standards"
\score {
	\new DrumStaff {
		\time 3/4

		\repeat volta 2 {
			\repeat unfold 4 { d4-> g4  d4 }
		}
	}

	\header {
		title = "3/4 Standards"
	}
}

\markup "4/4 Standards"
\score {
	\new DrumStaff {
		\time 4/4
		\numericTimeSignature

		\repeat volta 2 {
			\repeat unfold 3 { d4-^ g4 d4-> g4 }
			d4-^ g4 d4 r4 |
		}
	}

	\header {
		title = "4/4 Standards"
	}
}

\markup "6/8 Standards"
\score {
	\new DrumStaff {
		\time 6/8

        % Part 1
		\repeat volta 2 {
			d4. g4. |
			d4. r4. |
			d4. g4. |
			d4. r4 g8 |
			d4. g4. |
			d4. r4. |
			d4. g4. |
			d4. r4. |

		}
	}

	\header {
		title = "6/8 Standards"
	}
}