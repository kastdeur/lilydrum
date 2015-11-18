\version "2.18.2"

\include "config.ily"
\include "notes.pipes.ily"

\score {
    \new Staff {
		\global
		\bagpipeKey
		<<
			{\repeat volta 2 { \part \line } \break \part \line \break \line \bar "|."}
			{\pipesA s16 \pipesBA \pipesBB}
		>>
	}
	\header {
		title = \title
		meter = \meter
		instrument = \instrumentPipes
		composer = \composerPipes
	}
}