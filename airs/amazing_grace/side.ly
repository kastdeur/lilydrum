\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\part
				\repeat volta 2{
					\line \break
					\line \break
					\line \break
					\line \break
				}
			}
			{
				\snarePart
				\snareAA
				\snareAB
				\snareAC
				\snareAD
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