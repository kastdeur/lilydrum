\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{
				\repeat volta 1 { \line } \break
				\repeat volta 1 { \line } \break
				\repeat volta 1 { \line } \break
				\repeat volta 1 { \line } \break
			}
			{
				\snareA
				\snareB
				\snareC
				\snareD
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