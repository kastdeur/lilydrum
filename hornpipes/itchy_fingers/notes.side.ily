% 2/4 Itchy Fingers
% Side
\version "2.18.2"
composerSide = "Dean Hall, 1995"
snareAA = \drummode {
	\flamd d16-> g d \flamg g->		d16 g \flamd d-> g |
	d16 \flamg g-> d g		d8-> d8:32( |

	g16)-> d32 g32 d16 g16->		d32 g32 d32 g32 d16-> d16:64( |
	d16) g16-> d32 g d g		d4:32( |
}
snareAB = \drummode {
	\flamd d16)-> g d \flamg g->		d16 g \flamd d-> g |
	d16 \flamg g-> d g		d8-> \flamd d16-> g16 |

	d32 g d g d16-> g16		d16 d16:64( d16) g16 |
	d8:32(-> g8:32)(->		d8)->
}

snareBA = \drummode {
	d16 g16 |
	d32-> g d g  d g d g		d16-> g d d |
	g32-> d g d  g-> d g d		g16-> d g g |

	d32-> g d g  d g d-> g		d g d g d8-> |
	d16-> d16:64( d16) g16		d4:32(-> |
}

snareBBA = \drummode {
	d8)-> \flamg g8->		\flamd d16-> g d \flamg g-> |
	d16 g16-> d32 g d g		d8-> \flamd d16-> g16 |

	d32 g d g d16-> g16		d16 d16:64( d16) g16 |
	d8:32(-> g8:32)(->		d8)->
}