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
#(ly:set-option 'point-and-click #f)

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
		\consists "Horizontal_bracket_engraver"
		\override HorizontalBracket.staff-padding = #3.5		% staff-padding
		\override HorizontalBracket.direction = #UP			% brackets under thr staff
		\override HorizontalBracket.bracket-flare = #'(0 . 0)	% vertical brackets

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
  \set Score.beatStructure = #'( 4 4 4 4 )
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
		strictBeatBeaming = ##t

		\override TupletBracket.bracket-visibility = #'if-no-beams
	}
}

% =================================================	%
% 	Side Sticking (modifies note, or adds mark)		%
% =================================================	%
backstick	= #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.style = #'triangle
					$notes
					\revert Staff.NoteHead.style
				#})
crossstick	= #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.style = #'xcircle
					$notes
					\revert Staff.NoteHead.style
				#})
rimshot		= #(define-music-function (parser location notes) (ly:music?)
				#{
					$notes
					\once \override Staff.NoteHead.style = #'cross
					\once \hide Stem
					d
				#})

% =================================================	%
% 	Tenor Flourishing								%
% =================================================	%
flourish = #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.style = #'cross
					$notes
					\revert Staff.NoteHead.style
				#})

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

tutti = #(define-event-function (parser location notes) (ly:music?) #{
	\startGroup
	% still to add: a little 'u'
	$notes
	\stopGroup
	#})

% =================================================	%
% 	Flams, Drags & the sort							%
% =================================================	%
drumgrace = #(define-music-function (parser location notes) (ly:music?) #{
	% Set settings
	\stemUp
	\once \override Beam.positions = #'(1.8 . 1.8)
	\once \override DrumStaff.Stem.length = #5
	\override Flag.stroke-style = #"grace"
	\override Score.GraceSpacing #'spacing-increment = #1
	\override Score.Stem #'beamlet-max-length-proportion = #'(0.5 . 0.5)

	% Print notes
	\grace $notes

	% Revert back
	\revert Score.Stem #'beamlet-default-length
	\revert Flag.stroke-style
	\stemNeutral
#})


% Flams
flamd =   \drummode { \drumgrace { g8 } }					% Flam right
flamg =   \drummode { \drumgrace { d8 } }					% Flam left
flamddr = \drummode { \drumgrace { g8\startGroup } }		% Flam right with start repeat
flamgdr = \drummode { \drumgrace { d8\startGroup } }		% Flam left	 with start repeat

% Drags
dragd =   \drummode { \drumgrace { g16[ g] }}				% Drag right
dragg =   \drummode { \drumgrace { d16[ d] }}				% Drag left
dragddr = \drummode { \drumgrace { g16[\startGroup g] }} 	% Drag right with start repeat
draggdr = \drummode { \drumgrace { d16[\startGroup d] }} 	% Drag left  with start repeat

% Ruff
ruffg =   \drummode { \drumgrace { g16[ d g] }}				% Ruff right
ruffd =   \drummode { \drumgrace { d16[ g d] }}				% Ruff left
ruffgdr = \drummode { \drumgrace { g16[\startGroup d g] }}	% Ruff right with start repeat
ruffddr = \drummode { \drumgrace  { d16[\startGroup g d] }}	% Ruff left  with start repeat

% Swiss Ruff
sruffg =   \drummode { \drumgrace { g16[ d d] }}			% Swiss Ruff right
sruffd =   \drummode { \drumgrace { d16[ g g] }}			% Swiss Ruff left
sruffgdr = \drummode { \drumgrace { g16[\startGroup d d] }}	% Swiss Ruff right with start repeat
sruffddr = \drummode { \drumgrace { d16[\startGroup g g] }}	% Swiss Ruff left  with start repeat

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%	Embellishment functions, automatic left or right	%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Flam
flam = #(define-music-function (parser location note) (ly:music?) #{
	% is note right-handed? then \flamd
	% if left, then \flamg
	#(if (string=? (symbol->string (ly:music-property note 'drum-type)) "left-hand")
          #{ \flamg #}
          #{ \flamd #})
	% print the note, else it won't show up
	$note
#})

% Drag
drag = #(define-music-function (parser location note) (ly:music?) #{
	% is note right-handed? then \flamd
	% if left, then \flamg
	#(if (string=? (symbol->string (ly:music-property note 'drum-type)) "left-hand")
          #{ \dragg #}
          #{ \dragd #})
	% print the note, else it won't show up
	$note
#})

% Ruff
ruff = #(define-music-function (parser location note) (ly:music?) #{
	% is note right-handed? then \flamd
	% if left, then \flamg
	#(if (string=? (symbol->string (ly:music-property note 'drum-type)) "left-hand")
          #{ \ruffg #}
          #{ \ruffd #})
	% print the note, else it won't show up
	$note
#})

% Swiss Ruff
sruff = #(define-music-function (parser location note) (ly:music?) #{
	% is note right-handed? then \flamd
	% if left, then \flamg
	#(if (string=? (symbol->string (ly:music-property note 'drum-type)) "left-hand")
          #{ \sruffg #}
          #{ \sruffd #})
	% print the note, else it won't show up
	$note
#})