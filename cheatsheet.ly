
#(ly:set-option 'point-and-click #f)

% Choose a size
#(set-global-staff-size 18)
#(set-default-paper-size "a4" 'landscape)

\paper {
  indent = 0\mm
  ragged-right = ##t
  ragged-bottom = ##t
}
\layout {
  indent = 30\mm
  \context {
    \Score
    \override NonMusicalPaperColumn #'line-break-permission = ##f
  }
}

\include "lilydrum.ly"

\score {
	\new DrumStaff {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = "Plain notes"
		\drummode {
			d4 g dcross gcross \rimshot d \rimshot g dback gback
		}
    }
    \addlyrics {
		d g dcross gcross "\rimshot d" "\rimshot g" dback gback
    }
}

\score {
	\new DrumStaff {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = "Tenor Flourishing"
		\drummode {
			d^\splitTheFeather g^\cartWheel d^\up {\scoop d8 g8 d4} g d \flourish { d4 g d g }
		}
    }
    \addlyrics {
		"\splitTheFeather" "cartWheel" "up" "scoop d g d" "\flourish { }"
    }
}


\score {
	\new DrumStaff {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = "Tenor Flourishing"
		\drummode {
			\partial 8 d8:32( |
			\triplet { g16) d g} \flam d16. g32  \drag g16 g16 \triplet { d16 g:64 d->}
		}
    }
    \addlyrics {
    }
}

% # Writing parts
% rolls
% tuplets
% tutti
% accents ( > v ^)
%

\header {
    title = "Cheat sheet for entering pipeband drumming music"
    subtitle = "Intended for Lilypond 2.18 or better"
    tagline = \markup { "Cpl ET de Boone, Seaforths of Holland" }
}
