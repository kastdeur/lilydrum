% ================================================= %
%   Flams, Drags & the sort                         %
% ================================================= %

drumgrace = #(define-music-function (parser location notes ) ( ly:music? ) #{
	% Set settings
	\stemUp
	\once \override Beam.positions = #'(2 . 2)
	\once \override DrumStaff.Stem.length = #5
	\override Flag.stroke-style = #"grace"
	\override Score.GraceSpacing #'spacing-increment = #0
	\override Score.Stem #'beamlet-max-length-proportion = #'(0.5 . 0.5)

	% Print notes
	% Grace note timing is scaled, so they do not wander off too
	% much when combined with pipeband embellishments in a full
	% score.
	\times 1/4 { \grace $notes }

	% Revert back
	\revert Score.Stem #'beamlet-default-length
	\revert Flag.stroke-style
	\stemNeutral
#})

% Flams
flamd =   \drummode { \drumgrace { g8 } }			% Flam right
flamg =   \drummode { \drumgrace { d8 } }			% Flam left
flamddr = \drummode { \drumgrace { g8\dr } }		% Flam right with start repeat
flamgdr = \drummode { \drumgrace { d8\dr } }		% Flam left  with start repeat

% Optional Flams
optflamd =   \drummode { \drumgrace { \parenthesize g8 } }			% Optional Flam right
optflamg =   \drummode { \drumgrace { \parenthesize d8 } }			% Optional Flam left
optflamddr = \drummode { \drumgrace { \parenthesize g8\dr } }		% Optional Flam right with start repeat
optflamgdr = \drummode { \drumgrace { \parenthesize d8\dr } }		% Optional Flam left  with start repeat

% Drags
dragd =   \drummode { \drumgrace { g16[ g] } }		% Drag right
dragg =   \drummode { \drumgrace { d16[ d] } }		% Drag left
dragddr = \drummode { \drumgrace { g16[\dr g] } } 	% Drag right with start repeat
draggdr = \drummode { \drumgrace { d16[\dr d] } } 	% Drag left  with start repeat

% Open Drags
odragd =   \drummode { \drumgrace { << { g16[ g] } { s16 s32^\markup { \musicglyph #"scripts.open" } } >> } }          % Open Drag right
odragg =   \drummode { \drumgrace { << { d16[ d] } { s16 s32^\markup { \musicglyph #"scripts.open" } } >> }    }               % Open Drag left
odragddr = \drummode { \drumgrace { << { d16[\dr d] } { s16 s32^\markup { \musicglyph #"scripts.open" } } >> } }       % Open Drag right with start repeat
odraggdr = \drummode { \drumgrace { << { g16[\dr g] } { s16 s32^\markup { \musicglyph #"scripts.open" } } >> } }       % Open Drag left  with start repeat

% Ruff
ruffg =   \drummode { \drumgrace { d16[ g d] } }	% Ruff right
ruffd =   \drummode { \drumgrace { g16[ d g] } }	% Ruff left
ruffgdr = \drummode { \drumgrace { d16[\dr g d] } }	% Ruff right with start repeat
ruffddr = \drummode { \drumgrace { g16[\dr d g] } }	% Ruff left  with start repeat

% Swiss Ruff
sruffg =   \drummode { \drumgrace { g16[ d d] } }		% Swiss Ruff right
sruffd =   \drummode { \drumgrace { d16[ g g] } }		% Swiss Ruff left
sruffgdr = \drummode { \drumgrace { g16[\dr d d] } }	% Swiss Ruff right with start repeat
sruffddr = \drummode { \drumgrace { d16[\dr g g] } }	% Swiss Ruff left  with start repeat

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Embellishment functions, automatic left or right    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#(define (autohandFunc left right)
	"Return a music function that prepends @var{left} if the first next note-event is of type 'left-hand,
else it will prepend @var{right}"
	(define-music-function (parser location music) (ly:music? )
		(let ((note (_get-first-note music)))
			#{
				#(if (string=? (symbol->string (ly:music-property note 'drum-type)) "left-hand")
					#{ $left #}
					#{ $right #})

				% print the note, else it won't show up
				#music
			 #}
		 )
	)
)

% Flam
flam = #(autohandFunc flamg flamd)
flamdr = #(autohandFunc flamgdr flamddr )

% Optional Flam
optflam = #(autohandFunc optflamg optflamd)
optflamdr = #(autohandFunc optflamgdr optflamddr )

% Drag
drag = #(autohandFunc dragg dragd )
dragdr = #(autohandFunc draggdr dragddr )

% Open Drag
odrag = #(autohandFunc odragg odragd )
odragdr = #(autohandFunc odraggdr odragddr )

% Ruff
ruff = #(autohandFunc ruffg ruffd )
ruffdr = #(autohandFunc ruffgdr ruffddr )

% Swiss Ruff
sruff = #(autohandFunc sruffg sruffd )
sruffdr = #(autohandFunc sruffgdr sruffddr )
