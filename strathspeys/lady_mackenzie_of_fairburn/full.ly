\version "2.19.0"

\include "config.ily"
\include "notes.bass.ily"
\include "notes.tenor.ily"
\include "notes.side.ily"
\include "notes.pipes.ily"

\score {
	\new StaffGroup <<
		\new Staff {
			\global
			\bagpipeKey
			\set PipeBandDrumStaff.instrumentName = #"Pipes "
			\set PipeBandDrumStaff.shortInstrumentName = #"P."
			<<
				{\repeat volta 2 { \part \line } \break \part \line \break \line \bar "|."}
				{\pipesA s16 \pipesBA \pipesBB}
			>>
		}
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = #"Side "
			\set PipeBandDrumStaff.shortInstrumentName = #"S.D. "

			s16 \snareA s16
			\snareBA \snareBB
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = #"Bass "
			\set PipeBandDrumStaff.shortInstrumentName = #"B.D. "

			s16
			\bassA
			s16
			\bassBA
			\bassBB
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = #"Tenor"
			\set PipeBandDrumStaff.shortInstrumentName = #"T.D. "

			s16
			\tenorA
			s16
			\tenorBA
			\tenorBB
		}
	>>
	\header {
		title = "Lady MacKenzie of Fairburn"
		meter = "Strathspey"
	}
}