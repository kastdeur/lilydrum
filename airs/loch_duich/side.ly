\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 { \line \break}
				\repeat volta 2 { \line \break}
				\repeat volta 2 { \halfline s2. s2.}
					\alternative {
						{ s2.} {s2.}
				}
			}
			{
				\snareA
				\snareB
				\snareCA
				\snareCBA
				\snareCBB
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