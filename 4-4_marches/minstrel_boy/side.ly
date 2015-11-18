\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\part \line \break
				\line \break \bar "|."

				\partial 4 s4 |
				\line \break
				\line \break \bar "|."
			}
			{
			 \snareAA
			 \snareAB s4

			 \snareBA
			 \snareAB r8
			}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}