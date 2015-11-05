\score {
	\new PipeBandDrumStaff = "staff_bass"{
		\set Staff.instrumentName = #"Bass"
		\set Staff.shortInstrumentName = #"B.D."

		\time 4/4

		\drummode {
			\repeat volta 2 {
				d4-> g4-> d4 g4 |
				d4 g4 d4 g4 |
				d4-> g4 d4 g4 |
				d4-> g4 d8.-> g16 d4 |

				\break
				d4-> g4-> d4 g4 |
				r8 d8 r8 g8 r8 d8 r8 g8 |
				d4-> g4 d4 g4 |
				d4-> g4 r8. g16 d4 |

			}
		}
	}
	\header {
		title = "Molly Connell"
		composer = "W.H. de Boone / E.T. de Boone, 2014"
		instrument = "Bass Drum"
		meter = "STRATHSPEY"
	}
}
