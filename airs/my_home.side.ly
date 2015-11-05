\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \time 6/8

		\drummode {
			\repeat volta 2 {
				\partial 8 d8:32( |
				g8.) d16 g8		\flamd d8. g16 d8 |
				\flamg g8. d16 g8		d4.:32( |
				d8.) g16 d8		\flamg g8. d16 g8 |
				\flamd d8. g16 d8		d4.:32( |
				d8.) g16 d8		\flamd d4 g8 |
				d8. g16 d8		d4.:32( |
				d8.) g16 d8		\flamg g8. d16 g8 |
				d4.:32(		d4)
			}
			\repeat volta 2 {
				\partial 8 d8 |
				\flamd d8. g16 d8		d4.:32(
				d8.) g16 d8		d4.:32( |
				d8.) g16 d8		\flamg g8. d16 g8 |
				\flamd d8. g16 d8		d4.:32( |
				d8.) g16 d8		d4.:32( |
				d8.) g16 d8		\flamd d4 g8 |
				\flamd d8. g16 d8		\flamg g8. d16 g8 |
				d4.:32(		d4)
			}
		}% End of drums %
	}
	\header {
		title = "My Home"
		meter = "Slow Air"
		composer = ""
		instrument = "Side"
	}
}