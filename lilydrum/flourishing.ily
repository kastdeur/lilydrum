% =================================================	%
% 	Tenor Flourishing								%
% =================================================	%
% Part of lilydrum
splitTheFeather = \markup{ \musicglyph #"noteheads.s2xcircle"}
cartWheel = \markup { \musicglyph #"timesig.neomensural94" }
up = \markup {
		%\center-column {
			\combine
				\draw-line #'(0 . -2) % draw stick
				\arrow-head #Y #UP ##f
		%}
	}
bfly = \markup {
		\epsfile #X #2 #"../lilydrum/flourish_symbols/butterfly.eps"
}
stop = \markup {
		\epsfile #X #2 #"../lilydrum/flourish_symbols/stop.eps"
	}
scoop = \markup {
			\path #.2 #'( (moveto 0 0 )
						 (lineto 3 1 )
						 (lineto 6 0 )
						 (lineto 7 1 )
						 )
			}
scoopo = #(define-music-function (parser location beg notes) (ly:music? ly:music?)
			#{
			%Set spanner from first to last note
				$beg
				\startGroup
				$notes
				\stopGroup
			#})
flourish = #(define-music-function (parser location notes) (ly:music?)
			#{
				\temporary \override Staff.NoteHead.style = #'cross
				$notes
				\revert Staff.NoteHead.style
			#})
sdcoop = #(define-music-function (parser location notes end) (ly:music? ly:music?)
				#{
					$notes
					$end
				#})

% stf = \splitTheFeather
% cart = \cartWheel
% fl = \flourish