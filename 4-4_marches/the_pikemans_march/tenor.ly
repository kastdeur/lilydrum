\version "2.18.2"

\include "config.ily"
\include "notes.tenor.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{\repeat volta 2 { \part \line \break \line} \break
				\part \line \break
				\line \break
				\line \bar "|."
			}
			{
			 \tenorAA
			 \tenorAB

			 s8
			 \tenorBA
			 \tenorBB
			 \tenorBC
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