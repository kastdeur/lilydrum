% 2/4 MacKenzie Highlanders
% Snare
\version "2.18.2"
composerSnare = ""

%%music
snareA = \drummode {
	 d8:32( |
	g8) \tuplet 3/2 { d16 g d } 	\flam g16. d32-> g16. g32 |
	\flam d8 d8:32(	g8:32)(-> \tuplet 3/2 { d16) g d } |

	\flam g8[ \drag d16. d32]->		g16.[ \drag d32 d16. g32] |
	d4:32(		d8) d8:32( |

	g8) \tuplet 3/2 { d16 g d } 	\flam g16. d32-> g16. g32 |
	\flam d8 d8:32(	g8:32)(-> \tuplet 3/2 { d16) g d } |


	\flam g8-> \tuplet 3/2 { \flam d16 g d-> }		g16. g32 \flam d8 |
	d4:32(		d8)
}
% Part 2
snareB = \drummode {
	g8 |
	d8:32( \tuplet 3/2 { g16) d g-> } 	d16.-> g32-> d32 g d g-> |
	d8-> d8:32(		g8) d16. g32 |

	d8:32( \tuplet 3/2 { g16) d g-> } 	d32 g d g-> d16.-> g32 |
	d4:32(		d8) g8 |

	d8:32( \tuplet 3/2 { g16) d g-> } 	d8:32(-> g8:32)(-> |
	\tuplet 3/2 { d16) g d->} g16. g32	d8:32(-> \tuplet 3/2 { g16) d g } |

	\flam g8-> \tuplet 3/2 { \flam d16 g d-> }		g16. g32 \flam d8 |
	d4:32(		d8)
}