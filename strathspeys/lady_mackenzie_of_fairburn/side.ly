\version "2.18.2"

\include "config.ily"
\include "notes.side.ily"

\score {
    \new PipeBandDrumStaff {
        \global
        <<
			{\repeat volta 2 { \line } \break \part \line \break \line \bar "|."}
			{\snareA s16 \snareBA \snareBB}
		>>
	}
	\header {
		title = "Lady MacKenzie of Fairburn"
		meter = "Strathspey"
		instrument = "Side"
	}
}