\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 4/4

        % Part 1
            \repeat volta 2 {
				\partial 8 d8:32( |
				g8.) g16	d8:32( g8)	\flamd d8 d8:32(	g8) d8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32	\tuplet 3/2 { d16 g d } \flamg g16. g32	d16. g32 \tuplet 3/2 { d16 g d }	\flamg g8 d8:32( |
				g8.) g16	d8:32( g8)	\flamd d8 d8:32(	\tuplet 3/2 { g16) d g } d8 |
				\flamd d4	d4:32(	d4)	r8
			}

			\break

        % Part 2 ( Part 2.2 = Part 1)
				g8 |
				d4:32(	d8) g8	d4:32(	d8) g8:32( |
				\tuplet 3/2 { g16) d g } \flamd d16. g32	\tuplet 3/2 { d16 g d } \flamg g16. g32	d16. g32 \tuplet 3/2 { d16 g d }	\flamg g8 d8 |
				d4:32(	d8) g8	d4:32(	d8) g8 |
				\flamd d4	d4:32(	d4)	r8

    }% End of drums %
	\header {
		title = "Scotland the Brave"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}