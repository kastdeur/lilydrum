\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 6/8

		\repeat volta 2 {
			\partial 8 d8:32( |
			g8.) d16 g8		d8[ r8 d8:32(] |
			g8.) d16 g8		d8[ r8 d8:32(] |
			g8.) d16 g8		d8. g16 d8 |
			d4.:32(		d8)[ r8 d8:32(] |
			g8.) d16 g8		d8 r8 d8:32( |
			g8.) d16 g8		d8 r8 d8:32( |
			g8.) d16 g8		d8. g16 d8 |
			d4.:32(		d4.) |
		}
		\break
		\repeat volta 2 {
			\partial 8 d8 |
			d2.:32( |
			d8.)-> g16 d8		g8. d16 g8 |
			d2.:32( |
			d8.)-> g16 d8		g8 r8 g8 |
			d2.:32( |
			d8.)-> g16 d8		g8. d16 g8 |
			r8 g8 d8		r8 d8 g8 |
			d4.:32(		d4.) |
		}
    }% End of drums %

	\header {
		title = "The Mist Covered Mountains"
		meter = "Slow Air"
		composer = ""
		instrument = "Side"
	}
}