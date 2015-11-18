\version "2.19.0"

\include "config.ily"
\include "notes.bass.ily"
\include "notes.tenor.ily"
\include "notes.side.v1.1.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

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
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			\bassAA
			\bassAB

			s8
			\bassAA
			s8
			\bassAB
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\tenorA
			\tenorA

			s8
			\tenorBA
			s8
			\tenorBB
		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup {
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}