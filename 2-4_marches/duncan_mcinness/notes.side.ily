% 2/4 Black Bear
% Snare
\version "2.18.2"
composerSnare = "E.T. de Boone, 2015"

%%music
snareA = \drummode {
	d8:32( |
	g8) d16. g32->		d16. d32 \flamg g8 |
	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8-> d8:32( |

	g8) d16. g32		d8:32( g8) |
	\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32( |

	g8) d16. g32->		d16. d32 \flamg g8 |
	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8-> d8:32( |

	g8) \flamd d8	d16 \flamg g8 g16 |
	\flamd d8 d8:32(	g8)
}
% Part 2
snareB = \drummode {
	r16. g32 |
	\flamd d8 d16. g32->		d16. d32 \flamg g8 |
	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8:32( g8) |

	\flamd d8. d16		\flamg g16 r16 g16 \flamd d16 |
	\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8. g16 |

	\flamd d8 d16. g32->		d16. d32 \flamg g8 |
	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g16 d g-> }		d8-> d8:32( |

	g8) \flamd d8	d16 \flamg g8 g16 |
	\flamd d8 d8:32(	g8)
}
% Part 3
snareC = \drummode {
	d16. g32 |
	\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32 |
	d16. \flamg g32 d16. d32		\flamg g8 d8:32( |

	g8) d16. g32		d8:32( g8) |
	\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |

	\flamd d16. g32 d16. d32		\flamg g16. d32 g16. g32 |
	d16. \flamg g32 d16. d32		\flamg g8 d8:32( |

	g8) \flamd d8	d16 \flamg g8 g16 |
	\flamd d8 d8:32(	g8)
}
% Part 4
snareDA = \drummode {
	d16. g32 |
	d8:32( g8:32)(->		d8.) d16:64( |
	d16.) g32 \tuplet 3/2 { d16 g d } \flamg g8 d8:32( |

	g8) d16. g32		d8:32( g8) |
	\flamd d16. g32 \tuplet 3/2 { d16 g d }		\flamg g8 d16. g32 |
}
snareDAB = \drummode {
	d8:32( g8:32)(->		d8.) d16:64( |
	d16.) g32 \tuplet 3/2 { d16 g d } \flamg g8 d8:32( |

	g8) \flamd d8	d16 \flamg g8 g16 |
	\flamd d8 d8:32(	g8)
}
snareDAC = \drummode {
		\flamd d16. g32 d16. d32	\flamg g16. d32 g16. g32 |
		d16. \flamg g32 d16. d32	\flamg g8 d8:32( |
		<<
			{
				g8) \flamd d8	d16 \flamg g8 g16 |
			}
			\new PipeBandDrumStaff{
				\eighthBeaming
				\once \omit Staff.TimeSignature
				g16. d32:128( d16.) g32		\tuplet 3/2 { d16 g d } \flamg g16. g32 |
			}
		>>

		\flamd d8 d8:32(	g4)
		\bar "|."
}