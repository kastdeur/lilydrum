\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{\formatA	\formatB}
			{\snareA	\snareB}
		>>
	}
	\header {
		title = "The Mist Covered Mountains"
		meter = "Slow Air"
		instrument = "Side"
	}
}