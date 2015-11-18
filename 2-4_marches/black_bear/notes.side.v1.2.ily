% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSnare = "E.T. de Boone, v1.2, 2015"

%%music
yell = \markup { \bold HOI}

snareA = \drummode {
	d8:32( |
	g16.) \parenthesize g32 \flam d16. g32 d16. \flam g32 d16. g32 |
	\flam d16. \parenthesize g32 \flam d16. g32 d16. \flam g32 d16. g32 |
	\flam d8 \tuplet 3/2 { d16 g16 d16 } \flam g4 |
	r4^\yell d8:32( g8:32)(-> |

	d16.) \parenthesize g32 \flam d16. g32 d16. \flam g32 d16. g32 |
	\flam d16. \parenthesize g32 \flam d16. g32 d16. \flam g32 d16. g32 |
	\flam d4 d4:32( |
	d8) \flam g8 \flam d8
}
% Part 2
snareBA = \drummode {
	g8 |
	\tuplet 3/2 { \flam d16 g16 d16->} g16. g32 \flam d8:32( \tuplet 3/2 { g16) d16 g16 } |
	\flam d8:32( g16.)(-> g32) d32 g16. d16:64( d16:64)( |
	\tuplet 3/2 { d16) g16 d16-> } g16. g32 \flam d8:32( \tuplet 3/2 { g16) d16 g16 } |
	\flam d8:32( g16.)(-> g32) d32 g16. d16. g32 |

	\tuplet 3/2 { \flam d32 d32 g16 d16 } \tuplet 3/2 { g16 d16 \flam g32 g32 } \tuplet 3/2 { d16 g16 d16 } \tuplet 3/2 { \flam g32 g32 d16 g16 } |
	\tuplet 3/2 { d16 g16 \flam d32 d32 } \tuplet 3/2 { g16 d16 g16 } \tuplet 3/2 { \flam d32 d32 g16 d16 } \tuplet 3/2 { \flam g32 g32 d16 g16 } |
	\flam d16. g32-> d16. d32  \tuplet 3/2 { \flam g16[ d16 g16-> } d16. \drag g32] |
	g32 d32 g32 d32 \tuplet 3/2 {g16-> d16 g16-> } \tuplet 3/2 { d16 g16 d16->} g32 d32 d32 g32 |
}