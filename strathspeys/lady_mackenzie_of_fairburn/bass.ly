\version "2.18.2"

\include "config.ily"
\include "notes.bass.ily"

\score {
    \new PipeBandDrumStaff {
		\global
		<<
			{\repeat volta 2 { \line } \break \line \break \line \bar "|."}
			{\bassA \bassBA \bassBB}
		>>
	}
	\header {
		title = "Lady MacKenzie of Fairburn"
		meter = "Strathspey"
		instrument = "Bass"
	}
}