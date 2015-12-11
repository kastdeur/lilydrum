\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
	<<
		{
			\repeat volta 2 { \part \line \break } \break
			\repeat volta 2 { \part \halfline \break }
				\alternative{ {\part \halfline \break}{\part \halfline \break} }
			\bar "|."
		}
		{
			\snareAA \snareAB s8

			\snareBA s8
			\snareBB s8
			\snareAB s8
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
