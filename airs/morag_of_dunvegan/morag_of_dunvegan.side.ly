\version "2.18.2"

\include "morag_of_dunvegan.format.ly"
\include "morag_of_dunvegan.notes.side.ly"

\score {
    \new PipeBandDrumStaff {
        \time 6/8
        <<
			{\formatA \formatB}
			{\snareA \snareB}
		>>
	}
	\header {
		title = "Morag of Dunvegan"
		meter = "Slow Air"
		composer = ""
		instrument = "Side"
	}
}