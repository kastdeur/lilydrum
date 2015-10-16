\version "2.18.2"

\include "lilydrum.ly"

\header {
	instrument = "Tenor"
	title = "Standards"
}

\score {
	\drums {
		\time 2/4

		\repeat volta 2 {
			d8-> g  d g |
			d8-> g  d g |
			d8-> g  d g |
			d8-> g  d g |
			d8-> g  d g |
			d8-> g  d g |
			d8-> g  d g |
			d4-> r  |
			\bar "||"
		\break
			\flourish {
				d4 d |
				g4 g |
				d4 d |
				g4 g |
				d4 d |
				g4 g |
				d4 d |
				g4 d |
			}
		}
	}

	\header {
		title = "2/4 Standards"
	}
}

\score {
	\drums {
		\time 3/4

		\repeat volta 2 {
			d8.-> g16 d8 g r g |
			d4-> d8 g d4 |
			d8.-> g16 d8 g r g |
			d4-> d8 g d4 |
			\bar "||"
		\break
			\flourish{
				d4-> d d |
				g4-> g g |
				d4-> d g |
				g4-> d g |
			}
		}
	}

	\header {
		title = "3/4 Standards"
	}
}

\score {
	\drums {
		\time 4/4

		\repeat volta 2 {
			d8-^ g d g d-> g d g |
			d8-^ g d g d-> g d g |
			d8-^ g d g d-> g d g |
			d4-^ g d r |
			\bar "||"
		\break
			\flourish {
				d4 d g g |
				d4 d g g |
				d4 d g g |
			}
			\flourish d4 \flourish g d^\splitTheFeather r |
		}
	}

	\header {
		title = "4/4 Standards"
	}
}

\score {
	\drums {
		\time 6/8

		\repeat volta 2 {
			\flourish d4. \flourish g |
			d^\splitTheFeather r |
			d g |
			d8 r8 g8 d4. |
			\flourish d4. \flourish g |
			d^\splitTheFeather r |
			d g |
			d8 r8 g8 d4. |
			\bar "||"
		\break
			\flourish {
				d4. d |
				g g |
				d d |
				g g |
				d d |
				g g |
				d g |
			}
			d^\splitTheFeather r |

		}
	}

	\header {
		title = "6/8 Standards"
	}
}
