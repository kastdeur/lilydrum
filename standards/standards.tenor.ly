\version "2.18.2"

\include "lilydrum.ly"

\header {
	meter = "March"
	instrument = "Tenor"
}

\markup "2/4 Standards"
\score {
	\drums {
		\time 2/4
		\repeat unfold 8 { d8-> g8  d8 g8 }
		\break
		\repeat unfold 8 { d4 g4}
	}

	\header {
		title = "2/4 Standards"
	}
}

\markup "3/4 Standards"
\score {
	\drums {
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
	\drums {
		\time 4/4

		\repeat volta 2 {
			\repeat unfold 3 { d8[-^ g8] 	d8[ g8]		d8[-> g8]  d8[ g8] }
			d4-^ g4 d4 r4 |
		}
	}

	\header {
		title = "4/4 Standards"
	}
}

\markup "6/8 Standards"
\score {
	\drums {
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