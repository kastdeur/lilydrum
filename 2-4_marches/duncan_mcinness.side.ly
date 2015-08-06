\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 2/4
        	\repeat volta 2{
				\partial 8 d8:32( |
				g8) d16. g32->		d16. d32 \flamg g8 |
				\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8-> d8:32( |

				g8) d16. g32		d8:32( g8) |
				\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32( |

				g8) d16. g32->		d16. d32 \flamg g8 |
				\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8-> d8:32( |

				g8) \flamd d8	d16 \flamg g8 g16 |
				\flamd d8 d8:32(	g8)
			}
		\break
        	\repeat volta 2{
				\partial 8 r16. g32 |
				\flamd d8 d16. g32->		d16. d32 \flamg g8 |
				\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8:32( g8) |

				\flamd d8. d16		\flamg g16 r16 g16 \flamd d16 |
				\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8. g16 |

				\flamd d8 d16. g32->		d16. d32 \flamg g8 |
				\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8-> d8:32( |

				g8) \flamd d8	d16 \flamg g8 g16 |
				\flamd d8 d8:32(	g8)
			}
		\break
        	\repeat volta 2{
				\partial 8 d16. g32 |
				\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32 |
				d16. \flamg g32 d16. d32		\flamg g8 d8:32( |

				g8) d16. g32		d8:32( g8) |
				\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |

				\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32 |
				d16. \flamg g32 d16. d32		\flamg g8 d8:32( |

				g8) \flamd d8	d16 \flamg g8 g16 |
				\flamd d8 d8:32(	g8)
			}
		\break
			\repeat volta 2 {
        		\partial 8 d16. g32 |
				d8:32( g8:32)(		d8.) d16:64( |
				d16.) g32 \tuplet 3/2 { d16 g d } \flamg g8 d8:32( |

				g8) d16. g32		d8:32( g8) |
				\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
			}
			\alternative {
				{
					d8:32( g8:32)(		d8.) d16:64( |
					d16.) g32 \tuplet 3/2 { d16 g d } \flamg g8 d8:32( |

					g8) \flamd d8	d16 \flamg g8 g16 |
					\flamd d8 d8:32(	g8)
					\break
				}
				<<
					{
						\flamd d16. g32 d16. d32	\flamg g16. d32 g16. g32 |
						d16. \flamg g32 d16. d32	\flamg g8 d8:32( |

						g8) \flamd d8	d16 \flamg g8 g16 |
						\flamd d8 d8:32(	g4)
						\bar "|."
					}
					\new DrumStaff{
						\once \omit Staff.TimeSignature
						\flamd d16. g32 d16. d32	\flamg g16. d32 g16. g32 |
						d16. \flamg g32 d16. d32	\flamg g8 d8:32( |

						g16.) d32:128( d16.) g32		\tuplet 3/2 { d16 g d } \flamg g16. g32 |
						\flamd d8 d8:32(	g4)
					}
				>>
			}
    }% End of drums %

	\header {
		title = "Duncan McInness"
		meter = "Drum Salute in Quick Time"
		composer = ""
		instrument = "Side"
	}
}