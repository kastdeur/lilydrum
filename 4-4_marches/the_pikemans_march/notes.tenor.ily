% 4/4 The Pikeman's March
% Tenor
\version "2.18.2"
composerTenor = "E.T. de Boone, v0.3, 2015"

%%music
tenorAA = \drummode {
	d16 \< g16 |
	d4 \!		g8. d16		r8 d16 g	d4
	|
	d8 g		d8 g		d4			g4
	|
	d4->		r16 d16 r8	r16 g16 r8	r16 d r g
	|
	d4			d8^\markup{scoop} g	d4^\markup{end}	r8
}
tenorAB = \drummode {
	d16 \< g16 |
	d4 \!		g8. d16		r8 d16 g	d4
	|
	d8 g		d8 g		d4			g4
	|
	d8 g		r8 g8		d8 g8		r4
	|
	d4			d8^\markup{scoop} g	d4^\markup{end}	r8
}
% Part 2
tenorBA = \drummode {
	d8-_ g
	d8 g
	d8 g
	d8 g
	|
	s1*3
}
tenorBB = \drummode {
	s1*4
}
tenorBC = \drummode {
	s1*4
}
