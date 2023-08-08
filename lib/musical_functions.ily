% =================================================	%
% 	Musical Functions								%
% =================================================	%
% Part of lilydrum

eighthBeaming = {
	\set baseMoment = #(ly:make-moment 1/8)
	\set beatStructure = #'( 2 2 2 2)
}
eighthReelBeaming = {
	\set baseMoment = #(ly:make-moment 1/8)
	\set beatStructure = #'( 4 4 4 4)
}
eighthCompoundBeaming = {
	\set baseMoment = #(ly:make-moment 1/8)
	\set beatStructure = #'( 3 3 3 3)
}

sixteenthBeaming = {
	\set baseMoment = #(ly:make-moment 1/16)
	\set beatStructure = #'( 4 4 4 4)
}
sixteenthReelBeaming = {
	\set baseMoment = #(ly:make-moment 1/16)
	\set beatStructure = #'( 8 8 8 8)
}
sixteenthCompoundBeaming = {
	\set baseMoment = #(ly:make-moment 1/16)
	\set beatStructure = #'( 6 6 6 6)
}
% triplet
triplet = #(define-music-function (parser location music) (ly:music?) #{ \tuplet 3/2 { $music } #})
quintuplet = #(define-music-function (parser location music) (ly:music?) #{ \tuplet 5/2 { $music } #})
sextuplet = #(define-music-function (parser location music) (ly:music?) #{ \tuplet 6/4 { $music } #})

% dynamics
v = #(define-event-function (parser location) () #{ \upbow #})


#(define (text-spanner-start-stop mus)
	(let ((elts (ly:music-property mus 'elements)))
	(make-music 'SequentialMusic 'elements
		(append
			(list (make-music 'TextSpanEvent 'span-direction -1))
			(reverse (cdr (reverse elts)))
			(list (make-music 'TextSpanEvent 'span-direction 1))
			(list (last elts))
		)
	)
	)
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

% unison brackets
% TODO: a little 'u'
% TODO: open ended brackets(\odr,\ofr)
%unisonbracket = {
%		\once \override TextSpanner.style = #'line
%		\once \override TextSpanner #'to-barline = ##t
%		\once \override TextSpanner.bound-details.left.text = \markup {
%			\combine
%				\combine
%					\draw-line #'(0 . -1)
%					\draw-line #'(1 . 0)
%				\translate #'(1 . -0.5 ) \whiteout \box "u"
%		}
%		\once \override TextSpanner.bound-details.right.text = \markup { \draw-line #'(0 . -1) }
%		\once \override TextSpanner.bound-details.right.attach-dir = #RIGHT
%}
%dr = { \unisonbracket	<>\="unison"\startTextSpan }
%fr = { <>\="unison"\stopTextSpan }
%odr = { \unisonbracket	<>\="unison"\startTextSpan }
%ofr = { <>\="unison"\stopTextSpan }
dr = #(define-event-function (parser location) () #{ -\tag #'tutti \startGroup #})
fr = #(define-event-function (parser location) () #{ -\tag #'tutti \stopGroup #})
odr = #(define-event-function (parser location) () #{ -\tag #'tutti \startGroup #})
ofr = #(define-event-function (parser location) () #{ -\tag #'tutti \stopGroup #})
rn = #(define-event-function (parser location) () #{ -\tag #'tutti ^\markup \path #0.1 #'((moveto 0 0)(rlineto 0 1)(rlineto 4 0)(rlineto 0 -1)) #})

#(define (allbutlastnote mus)
   "Reverse the elements, Pop of (cdr) the first element, Reverse again, put it in a SequentialMusic"
	(let ((elts (ly:music-property mus 'elements)))
		(make-music 'SequentialMusic 'elements (reverse (cdr (reverse elts))))
	)
)
#(define (lastnote mus)
   "Get the last element, make it a list, put it in a SequentialMusic"
	(let ((elts (ly:music-property mus 'elements)))
		(make-music 'SequentialMusic 'elements (list (last elts)))
	)
)
tutti =
#(define-music-function (myMusic) (ly:music?)
	(define (grace-music-filter event)
		(let ((eventname (ly:music-property event 'name)))
		(not (eq? eventname 'GraceMusic))))
	(let*
		(
			(music-copy (ly:music-deep-copy myMusic))
			(es (extract-typed-music (music-filter grace-music-filter music-copy) 'note-event))
		)
		(if (> (length es) 1)
			#{% multiple notes
				\once \override HorizontalBracket.connect-to-neighbor = #'(#t #t)
				<>\dr
				#myMusic
				\fr
			#}
			#{% single note
				<>\rn
				#myMusic
			#}
		)
	)
)
