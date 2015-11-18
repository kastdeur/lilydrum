\version "2.18.2"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{\repeat volta 2 {\line} \break \line \bar "||" \break \line \bar "|." }
			{\tenorA \tenorBA \tenorBB }
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}