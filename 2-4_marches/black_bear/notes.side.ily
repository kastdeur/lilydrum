% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSnare = "E.T. de Boone, 2015"

%%music
snareA = \drummode {
	d8:32( |
	g16.) \parenthesize g32 \flamd d16. g32 d16. \flamg g32 d16. g32 |
	\flamd d16. \parenthesize g32 \flamd d16. g32 d16. \flamg g32 d16. g32 |
	\flamd d8 d32 g32 d32 g32 d4 |
	r4^\markup {\bold HOI} d8:32( g8:32)(-> |

	d16.) \parenthesize g32 \flamd d16. g32 d16. \flamg g32 d16. g32 |
	\flamd d16. \parenthesize g32 \flamd d16. g32 d16. \flamg g32 d16. g32 |
	\flamd d4 d4:32( |
	d8) \flamg g8 \flamd d8
}
% Part 2
snareBA = \drummode {
	g8 |
	d4:32( d4:32)( |
	d8) g16. d32-> g16. g32 \flamd d16. g32 |
	d4:32( d4:32)( |
	d8) g16. d32-> g16. g32 \flamd d16. g32 |

	d4:32( d8.:32)( g16:32)( |
	d8:32)( g8:32)( d4)( |
	g8:32)( d8:32)( g16.) d32-> g16. g32 |
	\flamd d8 d8:32( g8)
}