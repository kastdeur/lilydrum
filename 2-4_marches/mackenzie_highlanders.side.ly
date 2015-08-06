\version "2.18.2"


\include "lilydrum.ly"

\score {
	\new DrumStaff = "staff_side" {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 2/4
		\eighthBeaming

		\drummode {
			\repeat volta 2{
				\partial 8 d8:32( |
				g8) \tuplet 3/2 { d16 g d } 	\flamg g16. d32-> g16. g32 |
				\flamd d8 d8:32(	g8:32)(-> \tuplet 3/2 { d16) g d } |

				\flamg g8[ \dragd d16. d32]->		g16.[ \dragd d32 d16. g32] |
				d4:32(		d8) d8:32( |

				g8) \tuplet 3/2 { d16 g d } 	\flamg g16. d32-> g16. g32 |
				\flamd d8 d8:32(	g8:32)(-> \tuplet 3/2 { d16) g d } |


				\flamg g8-> \tuplet 3/2 { \flamd d16 g d-> }		g16. g32 \flamd d8 |
				d4:32(		d8)
			}
			\break
			\repeat volta 2{
				\partial 8 g8 |
				d8:32( \tuplet 3/2 { g16) d g-> } 	d16.-> g32-> d32 g d g-> |
				d8-> d8:32(		g8) d16. g32 |

				d8:32( \tuplet 3/2 { g16) d g-> } 	d32 g d g-> d16.-> g32 |
				d4:32(		d8) g8 |

				d8:32( \tuplet 3/2 { g16) d g-> } 	d8:32(-> g8:32)(-> |
				\tuplet 3/2 { d16) g d->} g16. g32	d8:32(-> \tuplet 3/2 { g16) d g } |

				\flamg g8-> \tuplet 3/2 { \flamd d16 g d-> }		g16. g32 \flamd d8 |
				d4:32(		d8)
			}
		}
	}

}

	\header {
		title = "MacKenzie Highlanders"
		meter = "March"
	}