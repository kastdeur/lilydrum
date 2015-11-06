\version "2.19.0"

\include "morag_of_dunvegan.format.ly"
\include "morag_of_dunvegan.notes.bass.ly"
\include "morag_of_dunvegan.notes.tenor.ly"
\include "morag_of_dunvegan.notes.side.ly"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = #"Side "
			\set PipeBandDrumStaff.shortInstrumentName = #"S.D. "

			\time 6/8
			<<
				{ \formatA	\formatB }
				{ \snareA	\snareB }
			>>
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = #"Bass "
			\set PipeBandDrumStaff.shortInstrumentName = #"B.D. "

			\bassA
			\bassB
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = #"Tenor"
			\set PipeBandDrumStaff.shortInstrumentName = #"T.D. "

			\tenorA
			\tenorB
		}
	>>
	\header {
		title = "Morag of Dunvegan"
		meter = "Slow Air"
	}
}