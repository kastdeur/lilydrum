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
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentPipes }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentPipes }
			<<
				{	\repeat volta 2 { \part \line }
					\break \part \line \bar "||"
					\break \line \bar "|."
				}
				{\pipesA s16 \pipesBA \pipesBB}
			>>
		}
		\new PipeBandDrumStaff = "side" {
			\set PipeBandDrumStaff.instrumentName = \markup \column {\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			s16 \snareA
			s16	\snareBA \snareBB
		}
		\new PipeBandDrumStaff = "bass" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}

			s16	\bassA
			s16	\bassBA \bassBB
		}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			s16 \tenorA
			s16 \tenorBA \tenorBB
		}
	>>
	\header {
		title = \title
		meter = \meter
		composer = \markup \large {
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \composerPipes  ":" }} #} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \composerSide  ":" }} #} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \composerTenor  ":" }} #} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \composerBass  ":" }} #} )
			}
			\column \right-align {
				$(if (not (string=? "" composerPipes))  #{ \markup {\line { \instrumentPipes }}#} )
				$(if (not (string=? "" composerSide))  #{ \markup {\line { \instrumentSide }}#} )
				$(if (not (string=? "" composerTenor)) #{ \markup {\line { \instrumentTenor }}#} )
				$(if (not (string=? "" composerBass))  #{ \markup {\line { \instrumentBass }}#} )
			}
		}
	}
}