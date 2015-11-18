% 4/4 Flett from Flotta
% Snare
\version "2.18.2"
composerSide = ""

%%music
snareA = \drummode {
	d8:32( |
	g8.) g16		d8:32( g8)		d4:32(		d8) d8:32( |
	g8) \tuplet 3/2 { d16 g d-> }		g16. g32 d8		\flamg g4		d8:32( g8:32)( |
	d4)		d8:32(-> \tuplet 3/2 { g16) d g }		\flamd d16. g32 d16. g32		\flamd d8 d8:32( |
	d4)->		d4:32(		d4)		d4:32( |
	g8.) g16		d8:32( g8)		d4:32(		d8) d8:32( |
	g8) \tuplet 3/2 { d16 g d-> }		g16. g32 d8		\flamg g4		d8:32( g8) |
	\flamd d8 \tuplet 3/2 { g16 d g }	d8:32(-> g8:32)(->		\tuplet 3/2 { d16) g d } \flamg g8		\flamd d8 g8:32( |
	d4)->		d4:32(		d4)		r8
}
% Part 2
snareB = \drummode {
	d4:32(		d8) d32 g d g		d32 g d g d8		\flamg g8 d8:32( |
	g8) \tuplet 3/2 { d16 g d-> }		g16. g32 d8		d4:32(		g8:32)(-> d8:32)(-> |
	d4)		r4		r4		r4 |
	d8.:32(-> g16)		d8:32(-> g8)->		d32 g d g d16. g32->		r16 g16-> r16 g16-> |

	g8.:32(-> g16)		d8:32(-> g8)		d4:32(		d8) d8:32( |
	g8) \tuplet 3/2 { d16 g d-> }		g16. g32 d8		\flamg g4		d8:32( g8:32) |
	\flamd d8 \tuplet 3/2 { g16 d g }	d8:32(-> g8:32)(->		\tuplet 3/2 { d16) g d } \flamg g8		\flamd d8 g8:32( |
	d4)->		d4:32(		d4)		r8
}