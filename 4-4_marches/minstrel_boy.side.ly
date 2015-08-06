\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new DrumStaff = "staff_side" {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 4/4
		\drummode {
			\repeat volta 2{
				\partial 4

				\dragd d16. d32-> g16. g32 |

				d4:32(		d8.) g16	\flamd d8 d8:32(		g8) d8:32( |
				g16.) d32-> g16. g32	\flamd d8 \flamg g8		d4:32(->	d4:32)(-> |

				\break
				d8:32)(-> g8:32)->		r8 d8:32(		g8) \dragd d16. d32->		g16. g32 \flamd d8 |
				\flamd d4		d4:32(		d4)
			}

			\break

			% Part 2
			\partial 4
			\flamd d8. d16:32( |
			g16) g16 d8:32(		g16) g16 d8:32(		g8:32)( d8)		r8 d8:32( |
			g16.) d32-> g16. g32	\flamd d8 \flamg g8		d4:32(->	d4:32)(-> |

			d8:32)(-> g8:32)->		r8 d8:32(		g8) \dragd d16. d32->		g16. g32 \flamd d8 |
			\flamd d4		d4:32(		d4)

			\break

			\dragd d16. d32-> g16. g32 |

			d4:32(		d8.) g16	\flamd d8 d8:32(		g8) d8:32( |
			g16.) d32-> g16. g32	\flamd d8 \flamg g8		d4:32(->	d4:32)(-> |

			d8:32)(-> g8:32)->		r8 d8:32(		g8) \dragd d16. d32->		g16. g32 \flamd d8 |
			\flamd d4		d4:32(		d4)

		}
	}

}

\header {
	title = "Minstrel Boy"
	meter = "March"
}