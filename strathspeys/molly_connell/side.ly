\version "2.18.2"

\include "config.ily"
\include "notes.side.v1.1.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{\repeat volta 2 { \line } \break \part \line \break \bar "||" \part \line \bar "|." }
			{\snareA s8 \snareBA \snareBB }
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentSide
		composer = \composerSide
	}
}