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
				g8) \tuplet 3/2 { d16 g d } 	\flam g16. d32-> g16. g32 |
				\flam d8 d8:32(	g8:32) d16. g32 |

				d8:32( g16.) g32->	d32 g d g-> d16.-> g32 |
				d8:64(-> g32) d g d	g8 d8:32( |

				g8) \tuplet 3/2 { d16 g d }	\flam g16. d32-> g16. g32 |
				d8-> g8:32(->	d8:32)(-> \tuplet 3/2 { g16) d g } |

				d8-> \drag d16 d32-> g	d g \drag d16 d16. g32 |
				d4:32(	d8)
			}
			\break

			\partial 8 g8 |
			d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
			d8-> d8:32(	g8) d16. g32 |

			d8:32( g16.) g32-> d32 g d g-> d16.-> g32 |
			d8:64(-> g32) d g d	g8 g8-> |

			d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
			d8-> g8:32(->	d8:32)(-> \tuplet 3/2{ g16) d g } |

			d8-> \drag d16 d32-> g	d g \drag d16 d16. g32 |
			d4:32(	d8) g8

			\bar "||"
			\break

			d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
			d8-> d8:32(	g8) d16. g32 |

			d8:32( g16.) g32-> d32 g d g-> d16.-> g32 |
			\flam d4	d8:32(-> \< g8:32)(-> |

			d8)-> \! \tuplet 3/2 { g16 d g-> }	d8:32(-> \tuplet 3/2 { g16) d g-> }
			d32 g d g-> d16.-> g32	d8:32(-> \tuplet 3/2 { g16) d g } |

			d8-> \drag d16 d32-> g	d g \drag d16 d16. g32 |
			d4:32( d4)
			\bar ":|"
		}

	}
	\header {
		title = "MacKenzie Highlanders"
		composer = "alternate version, 2015"
		meter = "March"
	}
}