% =================================================	%
% 	Musical Functions								%
% =================================================	%
% Part of lilydrum

eighthBeaming = {
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'( 2  2 )
}
compoundEighthBeaming = {
  \set baseMoment = #(ly:make-moment 1/8)
  \set beatStructure = #'( 3 )
}

% triplet
triplet = #(define-music-function (parser location notes) (ly:music?) #{ \tuplet 3/2 { $notes } #})

% dynamics
v = #(define-event-function (parser location) () #{ \upbow #})

% repeat brackets
dr = #(define-event-function (parser location) () #{ \startGroup #})
fr = #(define-event-function (parser location) () #{ \stopGroup #})

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

% still to add: a little 'u'
tutti = #(define-event-function (parser location notes) (ly:music?) #{
	\startGroup
	$notes
	\stopGroup
	#})
