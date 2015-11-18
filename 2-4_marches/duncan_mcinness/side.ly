\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 { \part \line } \break
				\repeat volta 2 { \part \line } \break
				\repeat volta 2 { \part \line } \break
				\part \halfline \halfline \bar "||" \break
				\part \halfline \halfline \bar "|."
			}
			{
			 \snareA s8
			 \snareB s8
			 \snareC s8
			 \snareDA \snareDAB s8
			 \snareDA \snareDAC
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