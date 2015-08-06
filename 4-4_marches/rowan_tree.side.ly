\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 4/4

        % Part 1
		\repeat volta 2 {
		\partial 4
				r8 d8 |
				d4:32(	d8) g8	d4:32(	d8) g8 |
				\flamd d8 g16. d32->	g16. g32 \flamd d16. g32	\flamd d16. d32:128( d16.) g32->	d32 g d \flamd d g8 |
				\flamd d8 d8:32(	g8) d8:32(	\tuplet 3/2 { g16) d g } \flamd d16. g32	d16. g32-> d g d \flamd d |
				d4	d4:32(	d4)
		}
	\break
        % Part 2 ( Part 2.2 = Part 1)
				d8. g16 |
				d8:32(-> g8:32)(->	g8:32)( d8:32)(->	g8:32)( d8:32)(->	g8)-> d8:32( |
				g8.) g16	d8:32( g8)	\flamd d8 d8:32(	g8.) g16 |
				\flamd d8 d8:32(	g8) d8:32(	\tuplet 3/2 { g16) d g } \flamd d16. g32	d16. g32-> d g d \flamd d |
				d4	d4:32(	d4)

				r8 d8 |
				d4:32(	d8) g8	d4:32(	d8) g8 |
				\flamd d8 g16. d32->	g16. g32 \flamd d16. g32	\flamd d16. d32:128( d16.) g32->	d32 g d \flamd d g8 |
				\flamd d8 d8:32(	g8) d8:32(	\tuplet 3/2 { g16) d g } \flamd d16. g32	d16. g32-> d g d \flamd d |
				d4	d4:32(	d4)
    }% End of drums %
	\header {
		title = "Rowan Tree"
		meter = "Quick March"
		composer = ""
		instrument = "Side"
	}
}