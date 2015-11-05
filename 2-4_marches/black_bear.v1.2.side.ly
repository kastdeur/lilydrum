\version "2.18.2"

\include "lilydrum.ly"

\score {
   \new PipeBandDrumStaff = "staff_side" {
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 2/4
		\eighthBeaming

		\drummode {
			% Part 1
				\repeat volta 2 {
					\partial 8 d8:32( |
					g16.) \parenthesize g32 \flam d16. g32 d16. \flam g32 d16. g32 |
					\flam d16. \parenthesize g32 \flam d16. g32 d16. \flam g32 d16. g32 |
					\flam d8 \tuplet 3/2 { d16 g16 d16 } \flam g4 |
					r4^\markup {\bold YELL} d8:32( g8:32)(-> |

					\break

					d16.) \parenthesize g32 \flam d16. g32 d16. \flam g32 d16. g32 |
					\flam d16. \parenthesize g32 \flam d16. g32 d16. \flam g32 d16. g32 |
					\flam d4 d4:32( |
					d8) \flam g8 \flam d8

				}

				\break

					g8
			% Part 2 ( Part 2.2 = Part 1)
					\tuplet 3/2 { \flam d16 g16 d16->} g16. g32 \flam d8:32( \tuplet 3/2 { g16) d16 g16 } |
					\flam d8:32( g16.)(-> g32) d32 g16. d16:64( d16:64)( |
					\tuplet 3/2 { d16) g16 d16-> } g16. g32 \flam d8:32( \tuplet 3/2 { g16) d16 g16 } |
					\flam d8:32( g16.)(-> g32) d32 g16. d16. g32 |

					\break

					\tuplet 3/2 { \flam d32 d32 g16 d16 } \tuplet 3/2 { g16 d16 \flam g32 g32 } \tuplet 3/2 { d16 g16 d16 } \tuplet 3/2 { \flam g32 g32 d16 g16 } |
					\tuplet 3/2 { d16 g16 \flam d32 d32 } \tuplet 3/2 { g16 d16 g16 } \tuplet 3/2 { \flam d32 d32 g16 d16 } \tuplet 3/2 { \flam g32 g32 d16 g16 } |
					\flam d16. g32-> d16. d32  \tuplet 3/2 { \flam g16[ d16 g16-> } d16. \drag g32] |
					g32 d32 g32 d32 \tuplet 3/2 {g16-> d16 g16-> } \tuplet 3/2 { d16 g16 d16->} g32 d32 d32 g32 |
					\bar "|."

		}% End of drums %
	}
	\header {
		title = "Black Bear"
		meter = "March"
		composer = "version 1.2, 2015"
		instrument = "Side"
	}
}