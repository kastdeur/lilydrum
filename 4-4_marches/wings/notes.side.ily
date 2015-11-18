% 4/4 Wings
% Snare
\version "2.18.2"
composerSide = "K. Westerkamp, 2003"

%%music
snareAA = \drummode {
	d8:32( \mf |
	g8.) \parenthesize d16	d8:32( g8)	r8  d32-> \< g d g	d-> g d g d8-> \! |
	\flamd d8 \f g16. d32->	g16. g32 \flamd d8	d4:32( \<	d8) \! d16. g32 |
}
snareABA = \drummode {
	d4:32( \<	d8) \! \flamg g8	d16 \flamg g8 g16	\flamd d8 d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d8	d16.[ g32 \dragd d8]	d32 g d g d8	d4:32(
}
snareABB = \drummode {
	d4:32)( \<	d8) \! \flamg g8	d32 g d g d8	d16.[ g32  \dragd d8] |
	d32 g d g d8	d4:32(	d4)	r8
}
% Part 2
snareBA = \drummode {
	d8:32( |
	g8) d16. g32	d16. d32:128( d8)	\flamd d8 d16. g32	d8:32(-> \< g8:32)(-> |
	d8.)-> \! g16	d8:32( g16.) g32	d8:32( g16.) g32	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g d g } |

	\flamd d8 d16. g32->	d16. d32 \flamg g8	\flamd d4	\tuplet 3/2 { d16 \p g d } \flamg g8 |
	\flamd d4	r4	d8[:32(-> \< g8]:32)(->	d8[:32)(-> g8]:32)(->  | s256) \!
}