% =================================================	%
% 	Tenor Flourishing								%
% =================================================	%
% Part of lilydrum

%---------------------------------------------------%
% Single note flourish definitions
%---------------------------------------------------%
splitTheFeather = ^\markup \center-column { \musicglyph #"noteheads.s2xcircle"}
cartWheel = ^\markup \center-column { \musicglyph #"timesig.neomensural94" }
up = ^\markup \center-column {
			\fontsize #5
			\override #'(thickness . 2)
			\combine
				\arrow-head #Y #UP ##f
				\draw-line #'(0 . -3) % draw stick
}

rswipe = ^\markup \center-column {
	\fontsize #5
	\override #'(thickness . 2 )
		\combine
			\draw-line #'(-3 . 0)
			\arrow-head #X #RIGHT ##f
}

bfly = ^\markup \center-column { \char ##x221E }
rbfly = ^\markup \center-column {
	  \line{
		\combine
			\arrow-head #X #LEFT ##f
			\draw-line #'(3 . 0 )
		}
		\line {	\char ##x221E }
}

rthrow = ^\markup \center-column {
  		\postscript #"
		/width 2 def
		/radius .4 def
		/filled 1 def
		/height .6 def
		/fwidth width radius add def
	
		/closedpoint { 
			radius 0 360 arc 
			gsave filled neg 
			setgray fill 
			grestore 
		stroke } def

		/dotstick { 
		  	0 0 moveto
			0 0 closedpoint 	
			0 0  moveto 
			fwidth neg 0 lineto 
			fwidth neg height neg moveto
			fwidth neg height lineto
		stroke } def

		newpath
		fwidth height translate
		0 0 dotstick
		stroke		
		"
}
lthrow = ^\markup \center-column {
  		\postscript #"
		/width 2 def
		/radius .4 def
		/filled 1 def
		/height .6 def
		/fwidth width radius add def

		/closedpoint { 
			radius 0 360 arc 
			gsave filled neg 
			setgray fill 
			grestore 
		stroke } def

		/dotstick { 
			radius 0 closedpoint 	
			radius 0  moveto 
			fwidth 0 lineto 
			fwidth height neg moveto
			fwidth height lineto
		stroke } def
		
		newpath
		0 height translate
		0 0 dotstick
		stroke		
		"
}
bthrow = ^\markup \center-column {
  		\postscript #"
		/width 2 def
		/radius .4 def
		/filled 1 def
		/height .6 def
		/fwidth width radius add def

		/closedpoint { 
			radius 0 360 arc 
			gsave filled neg 
			setgray fill 
			grestore 
		stroke } def

		/dotstick { 
			fwidth 0 closedpoint 	
			fwidth 0  moveto 
			0 0 lineto 
			0 height neg moveto
			0 height lineto
		stroke } def

		newpath
		fwidth height translate
		0 0 dotstick
		180 rotate
		fwidth 0  dotstick
		stroke
		"
	}
rpush = ^\markup \center-column {
  		\postscript #"
		/width 2 def
		/radius .4 def
		/filled 1 def
		/height .6 def
		/fwidth width radius add def
	
		/closedpoint { 
			radius 0 360 arc 
			gsave filled neg 
			setgray fill 
			grestore 
		stroke } def

		/dotstick { 
		  	0 0 moveto
			0 0 closedpoint 	
			0 0 moveto 
			fwidth neg 0 lineto 
			fwidth radius add 2 div neg 0 moveto
			fwidth radius add 2 div neg radius neg 
				radius 90 450 arc 
				gsave filled
				setgray fill 
				grestore 

			fwidth neg height neg moveto
			fwidth neg height lineto
		stroke } def

		newpath
		fwidth height translate
		0 0 dotstick
		stroke		
		"
	}
lpush = ^\markup \center-column {
  		\postscript #"
		/width 2 def
		/radius .4 def
		/filled 1 def
		/height .6 def
		/fwidth width radius add def
		
		/closedpoint { 
			radius 0 360 arc 
			gsave filled neg 
			setgray fill 
			grestore 
		stroke } def


		/dotstick { 
			radius 0 closedpoint 	
			radius 0 moveto 
			fwidth 0 lineto
			fwidth radius add 2 div 0 moveto
			fwidth radius add 2 div radius neg 
				radius 90 450 arc 
				gsave filled
				setgray fill 
				grestore 
			fwidth height neg moveto
			fwidth height lineto
		stroke } def
		
		newpath
		0 height translate
		0 0 dotstick
		stroke		
		"	}
bpush = ^\markup \center-column {
  		\postscript #"
		/width 2 def
		/radius .4 def
		/filled 1 def
		/height .6 def
		/fwidth width radius add def

		/closedpoint { 
			radius 0 360 arc 
			gsave filled neg 
			setgray fill 
			grestore 
		stroke } def


		/dotstick { 
			fwidth 0 closedpoint
			fwidth 0  moveto 
			0 0 lineto 
			fwidth sub 2 div 0 moveto
			fwidth radius sub 2 div radius neg 
				radius 90 450 arc 
				gsave filled
				setgray fill 
				grestore 

			0 height neg moveto
			0 height lineto
		stroke } def
		
		newpath
		fwidth height translate
		0 0 dotstick
		-1 1 scale
		fwidth 0  dotstick
		stroke
		"
	}

andrewStop = ^\markup \center-column {
  		\postscript #"
		/width .4 def
		/radius width def
		/filled 1 def
		/height 2 def
		/fheight height radius add def

		/closedpoint { 
			radius 0 360 arc 
			gsave filled neg 
			setgray fill 
			grestore 
		stroke } def
		/dotstick { 
			0 fheight closedpoint 	
			0 fheight moveto 
			0 0 lineto 
			width neg 0 lineto 
			width 0 lineto
		stroke } def
		
		newpath
		0 0 translate
		-45 rotate
		newpath
		0 0 dotstick
		stroke
		45 rotate
		fheight .5 sqrt mul 0 translate
		45 rotate
		0 0 dotstick
		stroke
		"
	}
quiggs = ^\markup \center-column {
		%\with-dimensions #'(-0.2 . 2.0) #'(0 . 2.0)
  		\postscript #"
		/width 1 def
		/radius .4 def
		/filled 1 def
		/height 2 def
		/fheight height radius add def

		/closedpoint { 
			radius 0 360 arc 
			gsave filled neg 
			setgray fill 
			grestore 
		stroke } def
		/dotstick { 
			0 height closedpoint 	
			0 height moveto 
			0 0 lineto 
		stroke } def
		/invdotstick { 
			0 radius closedpoint 	
			0 radius moveto 
			0 fheight lineto 
		stroke } def

		newpath
		0 0 dotstick
		stroke
		width 0 translate
		newpath
		0 0 invdotstick
		stroke
		"
	}

stop = ^\markup \center-column {
		%\with-dimensions #'(-0.2 . 2.0) #'(0 . 2.0)
  		\postscript #"
		/height 2 def
		/width .4 def
		/radius width def
		/filled 0 def
		/fheight height radius add def
		width 0 translate

		newpath
		0   fheight radius 0 360 arc gsave filled neg setgray fill grestore stroke
		0 fheight moveto 0 0 lineto
		width neg 0 moveto width 0 lineto
		stroke
		"
	}
%---------------------------------------------------%
% Multiple note flourish definitions
%---------------------------------------------------%
flourish = #(define-music-function (parser location notes) (ly:music?)
			#{
				\temporary \override Staff.NoteHead.style = #'cross
				$notes
				\revert Staff.NoteHead.style
			#})

% See issue #4 (https://github.com/kastdeur/lilydrum/issues/4)
scoop = #(define-music-function (music) (ly:music?)
	(define (grace-music-filter event)
		(let ((eventname (ly:music-property event 'name)))
			(not (eq? eventname 'GraceMusic))))
	(let*
		(
			(music-copy (ly:music-deep-copy music))
			(es (extract-typed-music (music-filter grace-music-filter music-copy) 'note-event))
		)
		(if (< (length es) 2)
			 (ly:message "A scoop requires at least two notes for positioning"))
		; do it anyway
		#{
			<>
			-\tweak HorizontalBracketText.text "scoop"
			-\tweak HorizontalBracketText.whiteout 1
			\startGroup
			#music
			\stopGroup
		#}))
%---------------------------------------------------%
% music function definitions
%---------------------------------------------------%
#(define (buildFlourishFunc flourish)
   (define-music-function (parser location note) (ly:music? ) 
	#{
		<>-$flourish $note
	#}
	)
)
cart = #(buildFlourishFunc cartWheel)
stf = #(buildFlourishFunc splitTheFeather)
		
