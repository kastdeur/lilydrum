% 2/4 MacKenzie Highlanders
% Snare
\version "2.18.2"
composerSide = "alternate version"

%%music
snareA = \drummode {
	d8:32( |
	g8) \tuplet 3/2 { d16 g d } 	\flam g16. d32-> g16. g32 |
	\flam d8 d8:32(	g8:32) d16. g32 |

	d8:32( g16.) g32->	d32 g d g-> d16.-> g32 |
	d8:64(-> g32) d g d	g8 d8:32( |

	g8) \tuplet 3/2 { d16 g d }	\flam g16. d32-> g16. g32 |
	d8-> g8:32(->	d8:32)(-> \tuplet 3/2 { g16) d g } |

	d8[-> \drag d16 d32-> g]	d[ g \drag d16 d16. g32] |
	d4:32(	d8)
}
% Part 2
snareBA = \drummode {
	g8 |
	d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
	d8-> d8:32(	g8) d16. g32 |

	d8:32( g16.) g32-> d32 g d g-> d16.-> g32 |
	d8:64(-> g32) d g d	g8 g8-> |

	d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
	d8-> g8:32(->	d8:32)(-> \tuplet 3/2{ g16) d g } |

	d8[-> \drag d16 d32-> g]	d[ g \drag d16 d16. g32] |
	d4:32(	d8) g8
}
snareBB = \drummode {
	d8:32( \tuplet 3/2 { g16) d g-> }	d16.-> g32-> d32 g d g-> |
	d8-> d8:32(	g8) d16. g32 |

	d8:32( g16.) g32-> d32 g d g-> d16.-> g32 |
	\flam d4	d8:32(-> \< g8:32)(-> |

	d8)-> \! \tuplet 3/2 { g16 d g-> }	d8:32(-> \tuplet 3/2 { g16) d g-> }
	d32 g d g-> d16.-> g32	d8:32(-> \tuplet 3/2 { g16) d g } |

	d8[-> \drag d16 d32-> g]	d[ g \drag d16 d16. g32] |
	d4:32( d4)
}