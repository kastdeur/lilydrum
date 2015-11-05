\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new PipeBandDrumStaff = "staff_side" {
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 6/8
		\drummode {
			\mark \default
			\repeat volta 2{
				\partial 8 r8 |
				\flamd d8 g8 d8		\flamg g4 g8 |
				d16 g d g d8->		g8 d8 g8 |

				\flamd d8 g8 d8		\flamg g4 g8 |
				d4.:32(->		d8) g8 g8 |

				\flamd d8 g8 d8		\flamg g4 g8 |
				d16 g d g d8->		g8 d8 g8 |

				d16 g d g d8->		g8 d8 g8 |
				d4.:32(		d4.)
			}
			\break
			% B
			\mark \default
			\repeat volta 2{
				\partial 8 g8 |
				d4.:32(->		d4.:32)(-> |
				d16) g d g d8->		g8 d8 g8 |

				\flamd d8-^ g8 \flamd d8-^		g8 d8 \flamg g8-^ |
				d8 g8 \flamg g8-^		\flamg g4-^ g8 |

				d4.:32(->		d4.:32)(-> |
				d16) g d g d8->		g8 d8 g8 |

				d16 g d g d8->		g8 d8 g8 |
				d4.:32(		d4.)
			}
			\break
			% C
			\mark \default
			\repeat volta 2{
				\partial 8 d8:32( |
				d4) \flamd d8		g8 d8 g8-^|
				d16 g d g d8		g8 d8 g8 |

				\flamd d8-^ g8 \flamd d8-^		g8 d8 \flamg g8-^ |
				d8 g8 \flamg g8-^		\flamg g4-^ d8:32( |

				d4) \flamd d8		g8 d8 g8-^|
				d16 g d g d8->		g8 d8 g8 |

				d16 g d g d8->		g8 d8 g8 |
				d4.:32(		d4.)
			}
			\break
			% D
			\mark \default
			\repeat volta 2{
				\partial 8 g8 |
				d4.:32(->		g8) d8 g8|
				d4.:32(->		g8) d8 g8|

				\flamd d8 g8 g8		\flamg g4 g8-^ |
				d8 g8 \flamg g8-^		\flamg g4 g8 |

				d4.:32(->		g8) d8 g8|
				d16 g d g d8->		g8 d8 g8 |

				d16 g d g d8->		g8 d8 g8 |
				d4.:32(		d4.)
			}

		\break
			%E
			\mark \default
			\repeat volta 2{
				\partial 8 r8 |
				\flamd d8 g8 d8		\backstick d4 g8 |
				d16 g d g d8->		g8 d8 g8 |

				\flamd d8 g8 d8		\backstick d4 g8 |
				d4.:32(->		d8) g8 g8 |

				\flamd d8 g8 d8		\backstick d4 g8 |
				d16 g d g d8->		g8 d8 g8 |

				\flamd d8 g8 d8		\backstick d4 g8 |
				d4.:32(		d4.)
			}
			\break
			% F
			\mark \default
			\repeat volta 2{
				\partial 8 g8 |
				d4.:32(->		d4.:32)(-> |
				d16) g d g d8->		g8^"Y" d8 g8 |

				\flamd d8-^ g8 \flamd d8-^		g8^"Y" d8 g8 |
				\flamd d8 g8 d8		\backstick d4 g8 |

				d4.:32(->		d8) g8 g8 |
				d16 g d g d8->		g8 d8 g8 |

				d16 g d g d8->		db4 g8 |
				d4.:32(		d4.)
			}
			\break

			\mark \default
			\repeat volta 2{
				\partial 8 d8:32( |
				d4)-^  \backstick d8		g8 d8 g8-^|
				d16 g d g d8		g8 d8 g8 |

				\flamd d8 g8 d8		\backstick g4 d8 g8 |
				\flamd d8 g8 g8		\backstick d4 d8:32( |

				d4)-> \backstick d8		g8 d8 g8|
				d16 g d g d8->		g8 d8 g8 |

				\flamd d8 g d8->		\backstick g4 d8 g8 |
				d4.:32(		d4.)
			}
			\break
			% H
			\mark \default
			\repeat volta 2{
				\partial 8 g8 |
				\flamd d8 d16 g16 d8		\repeat unfold 3 { sn8^"X" }|
				\flamd d8 g8 d8		g8^"Y" d8 g8|

				\flamd d8 g8 d8		\backstick d4 g8 |
				\flamd d8 g8 d8		\backstick d4 g8 |

				\flamd d8 d16 g16 d8		\repeat unfold 3 { sn8^"X" }|
				\flamd d8 g8 d8		g8^"Y" d8 g8|

				\flam d8 g8 d8		\backstick d4 g8 |
				d4.:32(		d4.)
			}

		}
	}
	\header {
		title = "Seaforth Sticks"
		meter = "Jig"
	}
}

