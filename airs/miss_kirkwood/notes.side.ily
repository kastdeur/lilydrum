% 6/8 Miss Kirkwood
% Side
\version "2.18.2"
composerSide = ""
snareA = \drummode {
	d4.:32(		d4)	g8 |
	\flamd d8 g16 d16-> g16 g16		d4.:32(\< |
	d8)\! \tuplet 3/2 { d16 g d } \flamg g8		d8:32( \tuplet 3/2 { d16) g d } \flamg g8 |
	d2.:32(\< |

	d8)\! \flamg g8. g16		d4:32( d8) |
	d8:32( d8.) g16		d4.:32( |
	d8) \tuplet 3/2 { d16 g d } \flamg g8		d8:32( g16) d16-> g16 g16 |
	d4.:32(		d4.)
}
snareB = \drummode {
	d4:32(	d8)		g8 d8:32( d8) |
	\flamd d8 g16 d16-> g16 g16		d4.:32(\< |
	d8)\! \tuplet 3/2 { d16 g d } \flamg g8		d8:32( \tuplet 3/2 { d16) g d } \flamg g8 |
	\dragd d16 d16-> g16 g16 \flamd d8		d8:32( d8) g8 |
	d4:32(	d8)		g8 d8:32( d8) |
	\flamd d8 g16 d16-> g16 g16		d4.:32(\< |
	d8)\! \tuplet 3/2 { d16 g d } \flamg g8		d8:32( g16) d16-> g16 g16 |
	d4.:32(		d4.)
}