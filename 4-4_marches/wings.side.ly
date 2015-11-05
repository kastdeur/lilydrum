\version "2.18.2"

\include "lilydrum.ly"

\score {
    \new PipeBandDrumStaff {
        \time 4/4
        \eighthBeaming

		\drummode {
			% Part 1
			\repeat volta 2 {
			\partial 8
					d8:32)(^"Part 2 of 2" |
					g8.) \parenthesize d16	d8:32( g8)	r8  d32-> \dr g d g	d-> g d g d8-> \fr |
					\flamd d8 g16. d32->	g16. g32 \flamd d8	d4:32(	d8) d16. g32 |
			}
			\alternative {
				{
				\break
				\set Timing.measureLength = #(ly:make-moment 4/4)
					d4:32(	d8) \flamg g8	d16 \flamg g8 g16	\flamd d8 d8:32( |
				\set Timing.measureLength = #(ly:make-moment 8/8)
					\tuplet 3/2 { g16) d g } \flamd d8	d16. g32 \dragd d8	d32 g d g d8	d4:32(
				}
				{
				\break
				\set Timing.measureLength = #(ly:make-moment 4/4)
					d4:32)(	d8) \flamg g8	d32 g d g d8	d16. g32  \dragd d8 |
				\set Timing.measureLength = #(ly:make-moment 7/8)
					d32 g d g d8	d4:32(	d4)	r8
				}
			}
			\bar "|."
		\break
			% Part 2 ( Part 2.2 = Part 1)
				\set Timing.measureLength = #(ly:make-moment 1/8)
					d8:32( |
				\set Timing.measureLength = #(ly:make-moment 4/4)
					g8) d16. g32	d16. d32:128( d8)	\flamd d8 d16. g32	d8:32(-> g8:32)(-> |
					d8.)-> g16	d8:32( g16.) g32	d8:32( g16.) g32	\tuplet 3/2 { d16 g d-> } \tuplet 3/2 { g d g } |
				\break
					\flamd d8 d16. g32->	d16. d32 \flamg g8	\flamd d4	\tuplet 3/2 { d16 g d } \flamg g8 |
					\flamd d4	r4	d8:32(-> g8:32)(->	d8:32)(-> g8:32)(-> \bar "|."
		}% End of drums %
	}
	\header {
		title = "Wings"
		meter = "Quick March"
		instrument = "Side"
	}
}