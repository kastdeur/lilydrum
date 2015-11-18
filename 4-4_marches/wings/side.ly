\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\partial 8 s8
				\repeat volta 2 {
					s1 | s1
				}
				\alternative {
					{ s1 | s1 }
					{ s1 | s2^"Fine" s4 s8 \bar "|."}
				}
				\partial 8 s8
				s1
				s1
				s1
				s1^"D.C. al Fine" \bar "||"
			}
			{
				\snareAA
					\snareABA
					\snareABB
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