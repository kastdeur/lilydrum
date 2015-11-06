\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \time 4/4

		\drummode {
			\repeat volta 2 {
				d4 g4 d8. g16 d4
				d4 g4 r8. g16 d4
				\flourish { d4 d4 g4 g4 }
				\flourish d4 \flourish g4 d4^\up g4^\up
			}
			\break
				d4^\up g4^\up \flourish { d4 g4 }
				d4 \parenthesize d8. g16 r8. g16 d4
				\flourish { d4 d4 g4 g4 }
				\flourish d4 \flourish g4 d4^\up g4^\up

			\break
				d4^\up g4^\up \flourish { d4 g4 }
				d4 \parenthesize d8. g16 r8. g16 d4
				d4 g4 d8. g16 d4
				\flourish d4 \flourish g4 d4^\up g4^\up
		\bar "|."

		}% End of drums %
	}
	\header {
		title = "Molly Connell"
		meter = "Strathspey"
		composer = "B. de Boone/ M. Jansen/ N. Kuijkhoven/ E.T. de Boone, 2014"
		instrument = "Tenor"
	}
}