% 4/4 51st Highland Division
% Snare
\version "2.18.2"
composerSide = ""

%%music
snareA = \drummode {
	d16. g32 |
	d4:32(		d8.) g16		\flamd d8 d8:32(		g8) d8:32( |
	g8.) g16		\flamd d8 \flamg g8		d4:32(->		d8.)-> g16 |
}
snareAA = \drummode {
	d8:32(-> g8)		r8 d8:32(		g8) g16. d32->		g16. g32 \flamd d8 |
	\flamg g4		d4:32(		d4) r8
}
snareAB = \drummode {
	d8:32(-> g8)		\flamd d8 d8:32(		\tuplet 3/2 { g16) d g } \flamd d16. g32->		d16. d32 \flamg g8 |
	\flamg g4		d4:32(		d4) r8
}
% Part 2
snareB = \drummode {
	d16. g32 |
	d8:32(-> \tuplet 3/2 { g16) d g }		d8:32(-> g8:32)(->		\tuplet 3/2 { d16) g d } \flamg g8		\flamd d8 d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d16. g32->		\tuplet 3/2 { d16 g d } \flamg g8		d4:32(->		d8.)-> g16 |

	d8:32(-> g8)		r8 d8:32(		g8) g16. d32->		g16. g32 \flamd d8 |

	\flamg g4		d4:32(		d4) r8
}