\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 {\halfline \break}
					\alternative {
						{ \halfline \break }
						{ \halfline \bar "|."}
					}

			}
			{
				\snareAA
				\snareAA
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