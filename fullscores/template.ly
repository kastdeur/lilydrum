\version "2.19.22"

print_pipes = #f
print_snare = #f
print_tenor = #f
print_bass  = #f

file_pipes = "Pipes"
file_snare = "Snare"
file_tenor = "Tenor"
file_bass  = "Bass"

composer_pipes = "Trad."
composer_snare = "Dean Hall, 1999"
composer_tenor = "Dean Hall, 1999"
composer_bass  = "Dean Hall, 1999"


%=======================================%
%	You should not have to touch below	%
%=======================================%

\include "bagpipe.ly"
\include "lilydrum.ly"

#(if (\print_pipes)	(music_pipes = \include \file_pipes))
#(if (\print_snare)	(music_snare = \include \file_snare))
#(if (\print_tenor)	(music_tenor = \include \file_tenor))
#(if (\print_bass)	(music_bass	 = \include \file_bass ))

#(ly:set-option 'point-and-click #f)
\paper{
	ragged-bottom = ##t
}

\score {
	{
		<<
			#(if (\print_pipes)	(
				\new Staff = "staff_pipes" {
					\set Staff.instrumentName = #"Pipes"
					\set Staff.shortInstrumentName = #"P."

					\music_pipes
				}
			))
			#(if (\print_snare)	(
				\new DrumStaff = "staff_snare" {
					\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
					\set Staff.instrumentName = #"Snare"
					\set Staff.shortInstrumentName = #"S.D."

					\music_snare
				}
			))
			#(if (\print_tenor)	(
				\new DrumStaff = "staff_tenor" {
					\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
					\set Staff.instrumentName = #"Tenor"
					\set Staff.shortInstrumentName = #"T.D."

					\music_tenor
				}
			))
			#(if (\print_bass)	(
				\new DrumStaff = "staff_bass" {
					\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
					\set Staff.instrumentName = #"Bass"
					\set Staff.shortInstrumentName = #"B.D."

					\music_bass
				}
			))
		>>
	}
}
\header {
	title = "Title"
	meter = "Meter"
	subtitle = "Subtitle"
    subsubtitle = "Subsubtitle"

    composer = \markup {
					\column {
						#(if (\print_pipes)	(\line{Pipes: \composer_pipes}))
						#(if (\print_snare)	(\line{Snare: \composer_snare}))
						#(if (\print_tenor)	(\line{Tenor: \composer_tenor}))
						#(if (\print_bass )	(\line{Bass: \composer_bass}  ))
					}
				}
    arranger = "Arranger"
      % The following fields are centered at the bottom
    tagline = "tagline goes at the bottom of the last page"
    copyright = "copyright goes at the bottom of the first page"
}