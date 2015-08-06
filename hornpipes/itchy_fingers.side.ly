\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 2/4

		\repeat volta 2 {
			\partial 8 r8 |
			\flamd d16^"2 of 2"-> g d \flamg g->		d16 g \flamd d-> g |
			d16 \flamg g-> d g		d8-> d8:32( |

			g16)-> d32 g32 d16 g16->		d32 g32 d32 g32 d16-> d16:64( |
			d16) g16-> d32 g d g		d4:32( |

		\break
			\flamd d16)-> g d \flamg g->		d16 g \flamd d-> g |
			d16 \flamg g-> d g		d8-> \flamd d16-> g16 |

			d32 g d g d16-> g16		d16 d16:64( d16) g16 |
			d8:32(-> g8:32)(->		d8)->
		}
		\break
		\repeat volta 2 {
			\partial 8 d16 g16 |
			d32-> g d g  d g d g		d16-> g d d |
			g32-> d g d  g-> d g d		g16-> d g g |

			d32-> g d g  d g d-> g		d g d g d8-> |
			d16-> d16:64( d16) g16		d4:32(-> |
			\break
		}
		\alternative {
			{
				d8)-> \flamg g8->		\flamd d16-> g d \flamg g-> |
				d16 g16-> d32 g d g		d8-> \flamd d16-> g16 |

				d32 g d g d16-> g16		d16 d16:64( d16) g16 |
				d8:32(-> g8:32)(->		d8)->
				\break
			}
			{
				d16[)-> g d \flamg g]->		d16 g \flamd d-> g |
				d16 \flamg g-> d g		d8-> \flamd d16-> g16 |

				d32 g d g d16-> g16		d16 d16:64( d16) g16 |
				d8:32(-> g8:32)(->		d8)->
				\bar "|."
			}
		}

    }% End of drums %

	\header {
		title = "Itchy Fingers"
		meter = "Hornpipe"
		composer = "Dean Hall, 1995"
		instrument = "Side"
	}
}