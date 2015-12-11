\version "2.19.0"

\include "config.ily"
%\include "notes.bass.ily"
\include "notes.tenor.ily"
\include "notes.side.v1.6.ily"

\score {
	\new StaffGroup <<
		\new PipeBandDrumStaff = "side" {
			\global
			\set PipeBandDrumStaff.instrumentName = \markup{\instrumentSide}
			\set PipeBandDrumStaff.shortInstrumentName = \markup{\shortInstrumentSide}

			<<
				{ \repeat volta 2 { \part \line \break \line} \break
					\part \line \break
					\line \break
					\line \bar "|."
				}
				{	\snareAA
					\snareAB
					s8

					\snareBA
					\snareBB
					\snareBC
				}
			>>
		}
		%\new PipeBandDrumStaff = "bass" {
		%	\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentBass }
		%	\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentBass}
        %
		%	\bassA
		%	s16 \bassBA \bassBB
		%}
		\new PipeBandDrumStaff = "tenor" {
			\set PipeBandDrumStaff.instrumentName = \markup{ \instrumentTenor }
			\set PipeBandDrumStaff.shortInstrumentName = \markup{ \shortInstrumentTenor }

			\tenorAA
			\tenorAB
			s8

			s8
			\tenorBA
			\tenorBB
			\tenorBC
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