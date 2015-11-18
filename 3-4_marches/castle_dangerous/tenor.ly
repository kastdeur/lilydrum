\version "2.18.2"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 { \line }
			}
			{
			 \tenorA
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}