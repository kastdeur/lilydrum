\version "2.18.2"

\include "config.ily"
\include "notes.side.v1.3.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 { \part \halfline \break \halfline } \break
				\part \line \bar "|."
			}
			{
			 \snareA s8

			 \snareBA
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