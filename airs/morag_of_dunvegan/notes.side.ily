% 6/8 Morag of Dunvegan
% Tenor
\version "2.18.2"
snareA = \drummode {
	\flamd d8 d8:32( g8)		\flamd d8 r8 \flamd d8 |
	g8 d8:32( g8)		g8 \tuplet 3/2 { d16 g d } g8 |

	\flamd d8 d8:32( g8)		\flamd d8 r8 d8 |
	\tuplet 3/2 { d16 g d } g8 \flamd d8		d4.:32(\< |

	d8)\! d8:32( g8)		\flamd d8 r8 \flamd d8 |
	g8 d8:32( g8)		\flamd d8 \tuplet 3/2 { d16 g d } g8 |

	\flamd d8 d8:32( g8)		\flamd d8 g16. d32-> g16. g32 |
	d4.:32(		d4.)
}

snareB = \drummode {
	d16.-> g32 d16. d32 g8		d8:32(-> g8) \flamd d8 |
	d16.-> g32 d16. d32 g8		\flamd d8-> \tuplet 3/2 { d16 g d } g8 |

	d16.-> g32 d16. d32 g8		d8:32(-> g8) \flamd d8 |
	\tuplet 3/2 { d16 g d } g8 \flamd d8		d4.:32(\< |

	d16.)->\! g32 d16. d32 g8		d8:32(-> g8) \flamd d8 |
	d16. g32 d16. d32 g8		\flamd d8-> \tuplet 3/2 { d16 g d } g8 |

	\flamd d8 d8:32( g8)		\flamd d8 g16. d32-> g16. g32 |
	d4.:32(		d4.)
}