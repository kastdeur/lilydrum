\version "2.18.2"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{\formatA \formatB}
			{\tenorA \tenorB}
		>>
	}
	\header {
		title = "Morag of Dunvegan"
		meter = "Slow Air"
		instrument = "Tenor"
	}
}