% 3/4 On the Road to Passchendaele
% Snare
\version "2.18.2"
composerSide = ""

%%music
snareAA = \drummode {
	\flamd d8. g16		d4:32(		d8) d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d8		\flamd d4		d4:32( |

	d8.) g16		d8:32(-> \tuplet 3/2 { g16) d g }		d8:32(-> g8:32)(-> |
	\tuplet 3/2 { d16) g d-> } g16. g32		\flamd d8 d8:32(	g16.) d32-> g16. g32 |
}
snareAB = \drummode {
	\flamd d8. g16		d4:32(		d8) d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d8		d4:32(		d4) |

	\flamd d8. g16		d4:32(		d8:32)(-> \tuplet 3/2 { g16) d g } |
	d16. d32 \flamg g8		d4:32(		d4)
}
% Part 2
snareBA = \drummode {
	d16[ \dragg g8 g16]		d8:32( g8)		d4:32( |
	\tuplet 3/2 { d16) g d-> } g16. g32		\flamd d4		d4:32( |

	d8.) g16		d8:32(-> \tuplet 3/2 { g16) d g }		d8:32(-> g8:32)(-> |
	\tuplet 3/2 { d16) g d-> } g16. g32		\flamd d8 d8:32(	g16.) d32-> g16. g32 |
}
snareBB = \drummode {
	d8. g16		d8:32( g8)		d4:32( |
	\tuplet 3/2 { g16) d g } \flamd d8		d4:32(		d4) |

	\flamd d8. g16		d4:32(		d8:32)(-> \tuplet 3/2 { g16) d g } |
	d16. d32 \flamg g8		d4:32(		d4)
}