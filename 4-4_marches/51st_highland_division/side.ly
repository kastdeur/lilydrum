\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 2 {
					\repeat volta 2 { \part \halfline \break}
						\alternative { {\halfline} {\halfline } }
						\bar "|." \break
					\part \line \bar "||" \break
					\line \bar "|."
				}
			}
			{
			 \snareA
				\snareAA s8
				\snareAB s8

			 \snareB
			 \snareA \snareAB
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