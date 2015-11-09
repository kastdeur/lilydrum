\version "2.19.0"

\include "config.ily"
\include "notes.bass.ily"
\include "notes.tenor.ily"
\include "notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = #"Side"
			\set PipeBandDrumStaff.shortInstrumentName = #"S.D."

			\global
			<<
				{
					\line \break
					\line \break
					\bar "|."

					\part \line \break
					\part \line \break
					\bar "|."
				}%End of Format
				{
  \set Score.proportionalNotationDuration = #(ly:make-moment 1/8)
					\snareA
					s8
					\snareA
					s8

					\snareBA
					\snareBB
				}
			>>
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = #"Bass "
			\set PipeBandDrumStaff.shortInstrumentName = #"B.D. "

			\bassAA
			\bassAB

			s8
			\bassAA
			s8
			\bassAB
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = #"Tenor"
			\set PipeBandDrumStaff.shortInstrumentName = #"T.D. "

			\tenorA
			\tenorA

			s8
			\tenorBA
			s8
			\tenorBB
		}
	>>
	\header {
		title = "Molly Connell"
		meter = "Slow Air"
	}
}