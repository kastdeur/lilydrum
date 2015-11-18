\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

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
			{
				\snareA
				\snareB
				\snareC
				\snareD
				\snareE
				\snareF
				\snareG
				\snareH
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