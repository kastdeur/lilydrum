\version "2.18.2"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{\formatA	\formatB}
			{\tenorA	\tenorB}
		>>
	}
	\header {
		title = "The Mist Covered Mountains"
		meter = "Slow Air"
		instrument = "Tenor"
	}
}