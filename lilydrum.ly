\version "2.16.2"
%{
	LilyPond file definitions for Pipeband drumming scores.
	Primarily focused on Snare drumming,
	occasional bass or tenor scores should be possible.

	This file builds on work done by Simon Froger.

	Substantial changes by ET de Boone, Seaforth Highlanders of Holland (seaforth.nl)
	Include by using :
	\include "[pathtothisfile]" e.g. "~/lilydrum.ly"

	Music has to be put into :
	\new DrumStaff {
		\drummode {
		 [musique]
		}
	}

%}

% Note name defs :
%	"d" for the right hand ("droite") and
%	"g" for the left hand ("gauche")
%-----------------------------------------

#(ly:set-option 'relative-includes #t)

\include "lib/layout_tweaks.ily"
\include "lib/musical_functions.ily"
\include "lib/embellishments.ily"
\include "lib/flourishing.ily"
\include "lib/special_sticking.ily"
\include "lib/rehearsal_marks.ily"
\include "lib/midi.ily"
