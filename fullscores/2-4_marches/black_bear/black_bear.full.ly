\version "2.18.2"

\include "black_bear.pipes.ly"
\include "black_bear.snare.ly"

#(set-default-paper-size "a4landscape")

\score {
	{
	\new StaffGroup <<
		\new Staff \with {
		  instrumentName = #"Pipes"
		  shortInstrumentName = #"P"
		} \pipes
		\new DrumStaff \with {
		  instrumentName = #"Snare"
		  shortInstrumentName = #"S.D."
		} \snare
	>>
	}
}
\header {
	title = "Black Bear"
	meter = "March"
	instrument = ""
}