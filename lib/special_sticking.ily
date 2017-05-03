% =================================================	%
% 	Side Sticking (modifies note, or adds mark)		%
% =================================================	%
% Part of lilydrum
backstick	= #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.style = #'triangle
					\temporary \override Staff.NoteHead.font-size = #1.2
					$notes 
					\revert Staff.NoteHead.font-size
					\revert Staff.NoteHead.style
				#})
crossstick	= #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.style = #'xcircle
					\temporary \override Staff.NoteHead.font-size = #1.2
					$notes 
					\revert Staff.NoteHead.font-size
					\revert Staff.NoteHead.style
				#})
rimshot		= #(define-music-function (parser location notes) (ly:music?)
				#{
					\temporary \override Staff.NoteHead.font-size = #1.2
					%\temporary \override Staff.NoteHead.stencil = #ly:text-interface::print
					%\temporary \override Staff.NoteHead.text = \markup {
					%	\combine
					%		\halign #-0.7 \draw-circle #0.85 #0.2 ##f
					%		\musicglyph #"noteheads.normal"
					%}
					$notes 
					%\revert Staff.NoteHead.stencil
					%\revert Staff.NoteHead.text
					\revert Staff.NoteHead.font-size
				#})