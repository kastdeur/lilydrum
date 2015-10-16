\score {
	\new DrumStaff = "staff_side" {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 6/8

		\drummode {
			\repeat volta 2 {
				\partial 8 g8 |
				\flam d8 d:32( g)	\flam d8 g16. d32 g16. g32 |
				d4.:32( d4.) |
				\flam d8 d:32( g)	\flam d8 g16. d32 g16. g32 |
				\flam d8 g16. d32 g16. g32	\flam d8 g d |
			\break
				d4.:32( d4.) |
				\flam d8 g16. d32 g16. g32	\flam d8 g d |
				\flam d8 d:32( g)	\flam d8 g16. d32 g16. g32 |
				\flam d8 g16. d32 g16. g32	\flam d8 g d |
			\break
				\flam d8 d:32( g)	\flam d8 g16. d32 g16. g32 |
				d4.:32( d4.) |
				\flam d8 d:32( g)	\flam d8 g16. d32 g16. g32 |
				d4.:32( d4.) |
			\break
				\flam d8 d:32( g)	\flam d8 g16. d32 g16. g32 |
				d4.:32( d4.) |
				\flam d8 d:32( g)	\flam d8 g16. d32 g16. g32 |
				\flam d8 g16. d32 g16. g32	\flam d4 |

			}
		}
	}
	\header {
		title = "Flower of Scotland"
		meter = "Air"
	}
}