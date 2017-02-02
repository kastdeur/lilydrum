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
					$notes 
					\revert Staff.NoteHead.font-size
				#})
