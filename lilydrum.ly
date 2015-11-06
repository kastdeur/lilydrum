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

#(ly:set-option 'point-and-click #f)
#(ly:set-option 'relative-includes #t)

\include ".lilydrum/layout_tweaks.ily"
\include ".lilydrum/musical_functions.ily"
\include ".lilydrum/embellishments.ily"
\include ".lilydrum/flourishing.ily"
\include ".lilydrum/special_sticking.ily"
