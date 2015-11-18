\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 { \line } \break
				\line \bar "||" \break
				\line \bar "|."
			}
			{
			 \snareAA
			 \snareAB

			 \snareBA
			 \snareBB

			 \snareBA
			 \snareAB
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