\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
			\repeat unfold 2 {
				\repeat volta 2 { \halfline	}
					\alternative {
						{\halfline}
						{\halfline }
					}
				\break
				}
			\bar "|."
			}
			{
			\snareAA
			\snareABA
			\snareABB


			\snareBA
			\snareBBA
			\snareBBB
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