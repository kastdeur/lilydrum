% ================================================= %
%   Side Sticking (modifies note, or adds mark)     %
% ================================================= %
% Part of lilydrum

backstick = #(define-music-function (parser location notes) (ly:music?)
#{
		\temporary \override Voice.NoteHead.style = #'triangle
		\temporary \override Voice.NoteHead.font-size = #1.2
		#notes
		\revert Voice.NoteHead.font-size
		\revert Voice.NoteHead.style
#})

crossstick = #(define-music-function (parser location notes) (ly:music?)
#{
		\temporary \override Voice.NoteHead.style = #'xcircle
		\temporary \override Voice.NoteHead.font-size = #1.2
		#notes
		\revert Voice.NoteHead.font-size
		\revert Voice.NoteHead.style
#})

rimshot = #(define-music-function (parser location notes) (ly:music?)
#{
		\temporary \override Voice.NoteHead.font-size = #1.2
		\temporary \override Voice.NoteHead.stencil = #ly:text-interface::print
		\temporary \override Voice.NoteHead.text = \markup { \musicglyph #"scripts.halfopen" }
		#notes
		\revert Voice.NoteHead.stencil
		\revert Voice.NoteHead.text
		\revert Voice.NoteHead.font-size
#})
