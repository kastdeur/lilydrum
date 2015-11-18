\version "2.18.2"

\include "config.ily"
\include "notes.side.alt.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 { \part \line } \break
				\part \line \bar "||" \break
				\line \bar "|."
			}
			{
			 \snareA s8
			 \snareBA
			 \snareBB
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