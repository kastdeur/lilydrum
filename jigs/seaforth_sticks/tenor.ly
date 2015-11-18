\version "2.18.2"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
		\global
        <<
			{
				\repeat unfold 8 {
					\mark \default
					\repeat volta 2 {
						\part
						\line
					}
					\break
				}
			}
			{}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentTenor
		composer = \composerTenor
	}
}