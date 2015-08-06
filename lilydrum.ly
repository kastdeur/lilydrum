\version "2.16.2"
%{
	LilyPond file definitions for Pipeband drumming scores.
	Primarily focused on Snare drumming,
	occasional bass or tenor scores should be possible.
	Especially with the use of an external eps file with flourishi symbols

	This file builds on work done by Simon Froger.

	Include by using :
	\include "[path]/lilydrum.ly"

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

drumPitchNames =
#(append '(
	(d . right-hand)
	(g . left-hand)
	(right . right-hand)
	(left . left-hand)

	(dback . right-backstick)
	(gback . left-backstick)
	(rightback . right-backstick)
	(leftback . left-backstick)

	(dcross . right-crossstick)
	(gcross . right-crossstick)
	(rightcross . right-crossstick)
	(leftcross . right-crossstick)
	)
  drumPitchNames
)

% Position according to the line : right hand above and left hand below
#(define pipeband-style '(
	(right-hand	()	#f	1)
	(left-hand	()	#f	-1)
	(right-backstick cross	#f	1)
	(left-backstick	cross	#f	-1)
	(right-backstick xcircle #f	1)
	(left-backstick	xcircle	#f	-1)
	)
)
% Built-in noteheads: default, cross, xcircle, diamond

% ===================================================	%
% 	Layout tweaks for good defaults						%
% ===================================================	%
\layout {
	\context {
		\DrumStaff

		% add hands to note definitions
		drumStyleTable = #(alist->hash-table pipeband-style)

		% one line per staff
		\override StaffSymbol.line-positions = #'(0)

		% stems
		\override Stem.direction = #DOWN		% stems down
		\override Stem.length = #9				% unbeamed stems length
		\override Stem.stemlet-length = #1.5	% short stem length

		% beams
		\override Beam.beam-thickness = #0.4		% beam-thickness
		\override Beam.positions = #'(-3.8 . -3.8)	% fix beams on one height

		% slurs and ties
		\override Slur.direction = #UP	% Slurs on top
		\override Tie.direction = #UP	% Ties on top

		% dynamics up
		\dynamicUp



		% slurs below rolls number
		%\override TextScript.outside-staff-priority = ##f
		%\override TextScript.side-axis = #0
		%\override TextScript.staff-padding = #3
		%\override TextScript.X-offset = #2 				% padding to stems
		%\override TextScript.extra-offset = #'(-0.3 . 0)

		% tremolos (rolls)
		\override StemTremolo.slope = #0.5					% slope
		\override StemTremolo.beam-width = #1.5				% beam-width
		\override StemTremolo.beam-thickness = #0.3			% beam-thickness
		\override StemTremolo.extra-offset = #'(0 . 0.3)	% vertical pos. position

		%\override StemTremolo.Y-offset = #-2.8

		% repeat brackets
		%\consists "Horizontal_bracket_engraver"
		%\override HorizontalBracket.staff-padding = #6.5		% staff-padding
		%\override HorizontalBracket.direction = #DOWN			% brackets under thr staff
		%\override HorizontalBracket.bracket-flare = #'(0 . 0)	% vertical brackets

	}
	\context {
		\Score

		\override RehearsalMark.break-align-symbols = #'(clef)
		\override RehearsalMark.padding = #3
		\override VoltaBracket.edge-height = #'(1.5 . 1.5)
	}
}

% ===================================================	%
% 	Define some tweaks for printing nicely			%
% ===================================================	%\


eighthBeaming = {
  \set Score.baseMoment = #(ly:make-moment 1 8)
  \set Score.beatStructure = #'( 2 )
}
sixteenthBeaming = {
  \set Score.baseMoment = #(ly:make-moment 1 16)
  \set Score.beatStructure = #'( 2 2 )
}

\layout{
		% no indent
		indent = 0
	\context{
		\DrumStaff
		% always numeric Time Signatures
		\numericTimeSignature

		% bar line height
		\override BarLine.bar-extent = #'(-2 . 2)

		% I like being able to identify the 8th notes
		subdivideBeams = ##t
	}
}

% =================================================	%
% 	Functions										%
% =================================================	%

% dynamics
v = #(define-event-function (parser location) ()
  #{ \upbow #}
)

% repeat brackets
dr = #(define-event-function (parser location) ()
  #{ \startGroup #}
)
fr = #(define-event-function (parser location) ()
  #{ \stopGroup #}
)

% dynamics with extended lines
dynLine = #(define-music-function
	(parser location text)
	(markup?)
	#{
		\once \override TextSpanner.style = #'line
		\once \override TextSpanner.bound-details.left.text = \markup {
			\combine
				\draw-line #'(0 . -1)
				\draw-line #'(1 . 0)
			\dynamic #text
		}
		\once \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
	#})

% =================================================	%
% 	Flams, Drags & the sort							%
% =================================================	%
drumgrace = #(define-music-function (parser location notes) (ly:music?) #{
	\stemUp
	\override Flag.stroke-style = #"grace"
	\once \override Beam.positions = #'(2 . 2)
	\once \override DrumStaff.Stem.length = #6
	\override Score.GraceSpacing #'spacing-increment = #0
	\override Score.Stem #'beamlet-max-length-proportion = #'(0.5 . 0.5)
	\tiny \grace $notes \normalsize
	\revert Score.Stem #'beamlet-default-length
	\revert Flag.stroke-style
	\stemNeutral
#})


% Flams
flamd = \drummode { \drumgrace { g8 } }			% right Flam, actually flam(left) note(right)
flamddr = \drummode { \drumgrace { g8\startGroup } }	% with start repeat
flamg = \drummode { \drumgrace { d8 } }			% left Flam
flamgdr = \drummode { \drumgrace { d8\startGroup } }	% with start repeat

% Drags
dragd = \drummode { \drumgrace { g16[ g] }}			% right Drag
dragddr = \drummode { \drumgrace { g16[\startGroup g] }} 	% with start repeat
dragg = \drummode { \drumgrace { d16[ d] }}			% left Drag
draggdr = \drummode { \drumgrace { d16[\startGroup d] }} 	% with start repeat

% Ruff
ruffg = \drummode { \drumgrace { g16[ d g] }}		% left Ruff
ruffgdr = \drummode { \drumgrace { g16[\startGroup d g] }}	% with start repeat
ruffd = \drummode { \drumgrace { d16[ g d] }}		% right Ruff
ruffddr = \drummode { \drumgrace  { d16[\startGroup g d] }}	% with start repeat

% Swiss Ruff
sruffg = \drummode { \drumgrace { g16[ d d] }}		% left Swiss Ruff
sruffgdr = \drummode { \drumgrace { g16[\startGroup d d] }}	% with start repeat
sruffd = \drummode { \drumgrace { d16[ g g] }}		% right Swiss Ruff
sruffddr = \drummode { \drumgrace { d16[\startGroup g g] }}	% with start repeat


flam = #(define-music-function (parser location note) (ly:music?) #{
	% is note right-handed? then \flamd
	% if left, then \flamg

	#(if #f \flamg ($\flamd)) % fix \flam{gd} return

	% print the note, else it won't show up
	$note
#})