\version "2.18.2"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{\repeat unfold 2 {\repeat volta 2 { \part \line } \break }}
			{\repeat unfold 2 {s16\tenorA}}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}