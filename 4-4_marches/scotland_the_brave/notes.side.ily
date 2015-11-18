% 4/4 Scotland the Brave
% Snare
\version "2.18.2"
composerSide = ""

%%music
snareA = \drummode {
	d8:32( |
	g8.) g16	d8:32( g8)	\flamd d8 d8:32(	g8) d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d16. g32	\tuplet 3/2 { d16 g d } \flamg g16. g32	d16. g32 \tuplet 3/2 { d16 g d }	\flamg g8 d8:32( |
	g8.) g16	d8:32( g8)	\flamd d8 d8:32(	\tuplet 3/2 { g16) d g } d8 |
	\flamd d4	d4:32(	d4)	r8
}
% Part 2
snareBA = \drummode {
	g8 |
	d4:32(	d8) g8	d4:32(	d8) g8:32( |
	\tuplet 3/2 { g16) d g } \flamd d16. g32	\tuplet 3/2 { d16 g d } \flamg g16. g32	d16. g32 \tuplet 3/2 { d16 g d }	\flamg g8 d8 |
	d4:32(	d8) g8	d4:32(	d8) g8 |
	\flamd d4	d4:32(	d4)	r8
}