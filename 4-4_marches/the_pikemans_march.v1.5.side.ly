\version "2.18.2"

\include "lilydrum.ly"

\score {
   \new DrumStaff = "staff_side" {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 4/4
		\eighthBeaming

		\drummode {
				\repeat volta 2 {
						\partial 8 g16. g32 |
						\flamd d4-^		d32\< g d g d8->\!		\flamd d8\> \flamg g8\!		r8 d8:32( |
						g16.) d32-> g16. g32		d16. g32-> d16. d32		\flamg g8 d8:32(		g8..) g32 |
						\flamd d8.. g32		\tuplet 3/2 { d16 d g} \flam d16. g32	\tuplet 3/2 { d16 d g } \flam d16. g32	\flam d16. d32 \tuplet 3/2 { g16 g d }
						\flamd d4		d8:32( g8:32)(->		d4)		r8 \tuplet 3/2 { g16\< d g\! } |
				\break
						\flamd d4-^		d32\< g d g d8->\!		\flamd d8\> \flamg g8\!		r8 d8:32( |
						\tuplet 3/2 { g16) d g } \flamd d16. g32		\tuplet 3/2 { d16 g d } \flamg g16. g32		\flamd d16. g32 d32 g d g		d8-> g16. g32 |
						d8:32( g8:32)(->		d8:32)( g8:32)(->		d8)-> \tuplet 3/2 { g16 d g}	\flam d8 g32 d d g	|
						\flam d8. g16	d16:64(-> \parenthesize d16:64)(-> g16:64)(-> \parenthesize g16:64)(-> 		d8.)-> \parenthesize d16:64(		\parenthesize d8:64)
				}
			\break
				\partial 8 d16. g32 |
				\flamd d8 \tuplet 3/2 { d16 g d }		\flamg g8 d8:32(		g16.) d32-> g16. g32		\flamd d8 d8:32( |
				g16.) d32-> g16. g32		d16. g32-> d16. d32		\flamg g8 d8:32(		g8) g8 |
				d8:32( g8:32)(->		d8:32)( g8:32)(->		d8)-> d32 g d g		d8-> d16. g32	|
				\flamd d4		d8:32( g8:32)(->		d4)		\flamd d16 \p g \flamg g d |

			\break
				\flamd d8\f \flamg g8		r8 d8:32(		g16.) d32-> g16. g32		\flamd d8 d8:32( |
				g16.) d32-> g16. g32		d16. g32-> d16. d32		\flamg g8 d8:32(		g8) d16. g32 |
				d8.:32(-> g16:64)(->		d8:32)(-> g8)->		\flamd d16.\> g32-> d16. d32\!		\flamg g16.\> d32-> g16. g32\! |
				\flamd d4		d4:32(		d4)		r8 d16. g32 |

			\break
				\flamd d8\f \flamg g8		r8 d8:32(		g16.) d32-> g16. g32		\flamd d8 d8:32( |
				g16.) d32-> g16. g32		d16. g32-> d16. d32		\flamg g8 d8:32(		g8) d16. g32 |
				d8.:32(-> g16:64)(->		d8:32)(-> g8)->		d32 g d g d16.-> g32->		d32 g d g d8-> |
				\flamd d4		d8:32( g8:32)(->		d4)		r4
		}% End of drummode %
	}
	\header {
		title = "The Pikeman's March"
		meter = "March"
		composer = "version 1.5, 2015"
		instrument = "Side"
	}
}