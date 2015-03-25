%{
	LilyPond file definitions for Highland snare drum scores.
	
	This file was first created by Simon Froger.

	Include by using :
	\include "[path]/lilydrum.ly"
	
	Music has to be put into :
	\new DrumStaff {
		\drummode {
		 [musique]
		}
	}

%}


% Note names defs : "d" for the right hand and "g" for the left hand
drumPitchNames =
#(append '(
	(d . right-hand)
	(g . left-hand)
	)
  drumPitchNames
)

% position according to the line : right hand up and left hand down
#(define pipebandsnaredrums '(
	(right-hand	default	#f	1)
	(left-hand	default	#f	-1))
)

% Layout tweaks for good defaults
\layout {
	% no indent
	indent = 0
	% rolls number : markups should be preceeded by
	\textLengthOn
	
	% dynamics up
	\dynamicUp
	\set DrumStaff.drumStyleTable = #(alist->hash-table pipebandsnaredrums)
	\context {
		\DrumStaff
		% one line per staff
		\override StaffSymbol.line-positions = #'(0)
		% bar line length
		\override BarLine.bar-extent = #'(-2 . 2)
		% stems
		\override Stem.direction = #-1 		 % stems down 
		\override Stem.length = #11		 % unbeamed stems lenght
		\override Stem.stemlet-length = #1.5 	 % short stem length 
		% beam at same height
		\override Beam.positions = #'(-5.5 . -5.5)
		% slurs below rolls number 
		\override TextScript.outside-staff-priority = ##f
		\override TextScript.side-axis = #0
		\override TextScript.staff-padding = #3
		\override TextScript.X-offset = #2 			% padding to stems
		\override TextScript.extra-offset = #'(-0.3 . 0)
		% tremolos (rolls)
		\override StemTremolo.slope = #0.5			% slope 
		\override StemTremolo.beam-width = #1.5			% beam-width 
		\override StemTremolo.beam-thickness = #0.3		% beam-thickness
		\override StemTremolo.extra-offset = #'(0 . 0.6)	% vertical pos. position
		%\override StemTremolo.Y-offset = #-3.3
		% repeat brackets
		\consists "Horizontal_bracket_engraver"
		\override HorizontalBracket.staff-padding = #6.5	% staff-padding
		\override HorizontalBracket.direction = #DOWN		% brackets under thr staff
		\override HorizontalBracket.bracket-flare = #'(0 . 0)	% vertical brackets
	}
	\context {
		\Score
		\override RehearsalMark.break-align-symbols = #'(clef)
		\override RehearsalMark.padding = #3
		\override VoltaBracket.edge-height = #'(1.5 . 1.5)
	}
}

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

% grace notes
startGraceMusic = {
	\stemUp \tiny
	\override Flag.stroke-style = #"grace"		
	\once \override Beam.positions = #'(3 . 3)	
	\once \override DrumStaff.Stem.length = #7	
}

stopGraceMusic =  {
	\revert Flag.stroke-style
	\normalsize
	\stemNeutral
}

% Flams 
flamd = \drummode { \grace { g8 } }			% right Flam 
flamddr = \drummode { \grace { g8\startGroup } }	% with start repeat  
flamg = \drummode { \grace { d8 } }			% left Flam 
flamgdr = \drummode { \grace { d8\startGroup } }	% with start repeat  

% Drags
dragd = \drummode { \grace{ g16[ g] }}			% right Drag 
dragddr = \drummode { \grace{ g16[\startGroup g] }} 	% with start repeat
dragg = \drummode { \grace{ d16[ d] }}			% left Drag
draggdr = \drummode { \grace{ d16[\startGroup d] }} 	% with start repeat

% Ruff
ruffg = \drummode { \grace{ g16[ d g] }}		% left Ruff
ruffgdr = \drummode { \grace{ g16[\startGroup d g] }}	% with start repeat
ruffd = \drummode { \grace{ d16[ g d] }}		% right Ruff
ruffd = \drummode { \grace{ d16[\startGroup g d] }}	% with start repeat
