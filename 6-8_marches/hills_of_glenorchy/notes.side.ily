% 6/8 Hills of Glenorchy
% Snare
\version "2.18.2"
composerSnare = "G. Clark, 1977"

%%music
snareA = \drummode {
	d8 |
	\flamg g4 \flamd d8-> g8 \tuplet 3/2 { d32 g32 d32 } g8.-> |
	\tuplet 5/2 { d8 g d g d } g8-> d4.:32( |
	d8.) g16 \tuplet 3/2 { \flamd d32 d32 g16 d16 } g16 d16 g16 d16 \tuplet 3/2 { \flamg g32 g32 d16 g16 } |
	d16 g16 d16 g16 \flamd d8 \flamg g4 d8 |

	\flamg g4 \flamd d8-> g8 \tuplet 3/2 { d32 g32 d32 } g8.-> |
	\tuplet 5/2 { d8 g d g d } g8-> \flamd d8 \tuplet 3/2 { g8 d8 g8 } |
	\flamd d16 d16 g16 d16 g16 d16  \flamg g16 g16 d16 g16 d16 g16:32(-> |
	g8.:32)( d16) g8:32(-> d4)
}
% Part 2
snareBA = \drummode {
	\tuplet 5/2 { d16 g d g d } |
	g8. d16 g8 d4.:32( |
	d16.) g32 d16 g16 d16 g16 d16 g16 d16 g16 d8 |
	\flamg g16.d32 g16 d16 \flamg g16 g16 \tuplet 3/2 { d16 g16 d16 } \flamg g8. d16 |
	g16 d16 \flamg g16 g16 \tuplet 3/2 { d16 g16 d16 } \flamg g8.d16 g8

	\break

	\flamg g8. d16 g8 d4.:32( |
	d16.) g32 d16 g16 d16 g16 d16 g16 d16 g16 d8 |
	\flamd d16 d16 g16 d16 g16 d16  \flamg g16 g16 d16 g16 d16 g16:32(-> |
	g8.:32)( d16) g8:32(-> d4)
}