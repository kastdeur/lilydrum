
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
	\new PipeBandDrumStaff {
		\set Staff.instrumentName = "Plain notes"
		\drummode {
			d4 g \crossstick d \crossstick g \rimshot d \rimshot g \backstick d \backstick g
		}
    }
    \addlyrics {
		"d" "g" "\crossstick d" "\crossstick g" "\rimshot d" "\rimshot g" "\backstick d" "\backstick g"
    }
}

\score {
	\new PipeBandDrumStaff {
		\set Staff.instrumentName = "Tenor Flourishing"
		\drummode {
			d^\splitTheFeather g^\cartWheel d^\up {d8 g8 d4} g d \flourish { d4 g d g }
		}
    }
    \addlyrics {
		"\splitTheFeather" "cartWheel" "up" "scoop d g d" "\flourish { }"
    }
}

\score {
	\new PipeBandDrumStaff {
		\set Staff.instrumentName = "Embellishments"
		\time 2/4
		\drummode {
			\flam d		\flam g
			\drag d		\drag g
			\odrag d	\odrag g
			\ruff d		\ruff g
			\sruff d	\sruff g
		}
	}
    \addlyrics {
		"\flam d"	"\flam g"
		"\drag d"	"\drag g"
		"\odrag d"	"\odrag g"
		"\ruff d"	"\ruff g"
		"\sruff d"	"\sruff g"
	}
}
\score {
	\new PipeBandDrumStaff {
		\set Staff.instrumentName = \markup \column { \line{Forced hand} \line{embellishments}}
		\time 2/4
		\drummode {
			\flamg d	\flamd g
			\dragg d	\dragd g
			\odragg d	\odragd g
			\ruffg d	\ruffd g
			\sruffg d	\sruffd g
		}
	}
    \addlyrics {
		"\flamg d"	"\flamd g"
		"\dragg d"	"\dragd g"
		"\odragg d"	"\odragd g"
		"\ruffg d"	"\ruffd g"
		"\sruffg d"	"\sruffd g"
    }
}
\score {
	\new PipeBandDrumStaff {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = "Rolls"
		\drummode {
			d4:32( d8:32)(-> g8) \flam d4 r8 d8:32( \dr |
			\triplet { g16) d g } \drag d16. g32  d32 g d g d16. g32-> d16. d32 \flam g4
		}
    }
    \addlyrics {
		\partial 8
		"d8:32(" "\\triplet " -- "\\flam d16." "g32"  -- "\\drag g16" -- "\\triplet" "g:64" "d-> }"
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
