% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSnare = "E.T. de Boone, 2015"

%%music
snareA = \drummode {
	r8 d16. g32 |
	\flamd d8 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32(		g16.) d32-> g16. g32		\flamd d8 d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |

	\flamd d8 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32(		g16.) d32-> g16. g32		\flamd d8 d8 |
	\flamd d4	d4:32(		d4)
}
% Part 2
snareBA = \drummode {
	\flamd d4 |
	d4:32(\<		d4:32)(->		d8)\! d32 g d g		d8-> d8:32( |
	\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |

	d4:32(\<		d4:32)(->		d8)\! d32 g d g		d8-> g8 |
	\flamd d4	d4:32(		d4)
}
snareBB = \drummode{
	\flamd d4 |
	d4:32(\<		d4:32)(->		d8)\! d32 g d g		d8-> d8:32( |

	\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |

	\flamg g16. d32:128( d16.) g32		d16.:64( d32) \tuplet 3/2 { g16 d g }		\flamd d16. g32-> d32 g d g		d16. g32-> d32 g d g |

	d4	d4:32(		d4)
}