\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \time 6/8

		\drummode {
			\repeat volta 2 {
				\flamd d4 \flamd d8		d16:64( d8) d16:64( d8) |
				d4:32( d8)		\dragd d16 d-> g g \flamd d8 |

				\flamd d4 \flamd d8 	d16:64( d8) d16:64( d8) |
				d4:32(	g8:32)(->		\tuplet 3/2 { d16) g d-> } g16 g \flamd d8 |

				\flamd d4 \flamd d8		d16:64( d8) d16:64( d8) |
				d4:32( d8)		\dragd d16 d-> g g \flamd d8 |

				\flamg g8 d8:32( d8)		r8 d8:32( d8) |
				\dragd d16 d-> g g \flamd d8		d4.:32(\< |
			}
			\break
			\repeat volta 2 {
				d4)\! g8		d8:32( d8) g8 |
				d8:32( d8) g8		\dragd d16 d-> g g \flamd d8 |

				\flamg g4 g8		d8:32( d8) g8 |
				d4:32(	g8:32)(->		\tuplet 3/2 { d16) g d-> } g16 g \flamd d8 |

				\flamd d4 \flamd d8		d16:64( d8) d16:64( d8) |
				d4:32( d8)		\dragd d16 d-> g g \flamd d8 |

				\flamg g8 d8:32( d8)		r8 d8:32( d8) |
				\dragd d16 d-> g g \flamd d8		d4.:32(\< |
			}
			\break
			\repeat volta 2 {
				d8)\! \tuplet 3/2 { d16 g d } \flamg g8		d8:32( \tuplet 3/2 { d16) g d } \flamg g8 |
				d8 g16 d-> g g		d4.:32(\< |

				d8)\! \tuplet 3/2 { d16 g d } \flamg g8		d8:32( \tuplet 3/2 { d16) g d } \flamg g8
				d4:32(	g8:32)(->		\tuplet 3/2 { d16) g d-> } g16 g \flamd d8 |

				d8 \tuplet 3/2 { d16 g d } \flamg g8		d8:32( \tuplet 3/2 { d16) g d } \flamg g8 |
				d4:32( d8)		\dragd d16 d-> g g \flamd d8 |
			}
			\alternative {
				{
					\dragd d16 d-> g g \flamd d8		d4.:32(\< |
				}
				{
					\dragd d16)\! d-> g g \flamd d8		\flamd d4. |
				}
			}
		}% End of drums %
	}
	\header {
		title = "Loch Duich"
		meter = "Slow Air"
		composer = ""
		instrument = "Side"
	}
}