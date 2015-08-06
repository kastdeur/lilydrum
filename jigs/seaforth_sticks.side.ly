\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new DrumStaff = "staff_side" {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 6/8
		\drummode {
			\repeat volta 2{
				\partial 8 r8^"A" |
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
			\repeat volta 2{
				\partial 8 g8^"B" |
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
			\repeat volta 2{
				\partial 8 d8:32(^"C" |
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
			\repeat volta 2{
				\partial 8 g8^"D" |
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
			\repeat volta 2{
				\partial 8 r8^"E" |
				\flamd d8 g8 d8		dback4 g8 |
				d16 g d g d8->		g8 d8 g8 |

				\flamd d8 g8 d8		dback4 g8 |
				d4.:32(->		d8) g8 g8 |

				\flamd d8 g8 d8		dback4 g8 |
				d16 g d g d8->		g8 d8 g8 |

				\flamd d8 g8 d8		dback4 g8 |
				d4.:32(		d4.)
			}
			\break
			% F
			\repeat volta 2{
				\partial 8 g8^"F" |
				d4.:32(->		d4.:32)(-> |
				d16) g d g d8->		g8^"Y" d8 g8 |

				\flamd d8-^ g8 \flamd d8-^		g8^"Y" d8 g8 |
				\flamd d8 g8 d8		dback4 g8 |

				d4.:32(->		d8) g8 g8 |
				d16 g d g d8->		g8 d8 g8 |

				d16 g d g d8->		db4 g8 |
				d4.:32(		d4.)
			}
			\break
			% G
			\repeat volta 2{
				\partial 8 d8:32(^"C" |
				d4)-^  dback8		g8 d8 g8-^|
				d16 g d g d8		g8 d8 g8 |

				\flamd d8 g8 d8		gback8 d8 g8 |
				\flamd d8 g8 g8		dback4 d8:32( |

				d4)-> dback8		g8 d8 g8|
				d16 g d g d8->		g8 d8 g8 |

				\flamd d8 g d8->		gback8 d8 g8 |
				d4.:32(		d4.)
			}
			\break
			% H
			\repeat volta 2{
				\partial 8 g8^"H" |
				\flamd d8 d16 g16 d8		g8^"X" d8^"X" g8^"X"|
				\flamd d8 g8 d8		g8^"Y" d8 g8|

				\flamd d8 g8 d8		dback4 g8 |
				\flamd d8 g8 d8		dback4 g8 |

				\flamd d8 d16 g16 d8		g8^"X" d8^"X" g8^"X"|
				\flamd d8 g8 d8		g8^"Y" d8 g8|

				\flam d8 g8 d8		dback4 g8 |
				d4.:32(		d4.)
			}

		}
	}

}

\header {
	title = "Seaforth Sticks"
	meter = "Jig"
}