\version "2.19.0"

\include "config.ily"
\include "notes.bass.ily"
\include "notes.tenor.ily"
\include "notes.side.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\global
			\set PipeBandDrumStaff.instrumentName = #"Side "
			\set PipeBandDrumStaff.shortInstrumentName = #"S.D. "

			<<
				{ \repeat volta 2 {\line } \break \part \line \break \line \bar "|."}
				{ \snareA s16		\snareBA \snareBB }
			>>
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = #"Bass "
			\set PipeBandDrumStaff.shortInstrumentName = #"B.D. "

			\bassA
			s16
			\bassBA
			\bassBB
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = #"Tenor"
			\set PipeBandDrumStaff.shortInstrumentName = #"T.D. "

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