\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			\formatA
			\snareA
		>>
	}
	\header {
		title = "Farewell to Camraw"
		meter = "Slow Air"
		instrument = "Side"
	}
}