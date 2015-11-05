\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new PipeBandDrumStaff = "staff_side" {
		\set Staff.instrumentName = #"Side"
		\set Staff.shortInstrumentName = #"S.D."

		\time 4/4
        \eighthBeaming
		\drummode {
			\repeat volta 2{
				r1 |
				r1 |
				\flamd d8 g8		\flamd d32 g d g  d g d g		d16.-> g32 d32 g d g	d16 g d g |
				\flamd d4		r4		r8	\flamd d32 g d g		d16-> g d g |
				\flamd d4		d32 g d g d g d g		d4		r4 |
				\flamd d4		\flamd d8 \flamg g8		d4		d32 g d g  d g d g |
				d16 g \flamd d32 g d g		\flamd d16 g d32 g d g			d8 d32 g d g	d16 g d g |
				\flamd d8 \flamg g8 r4 r2
			}
		}
	}

}

	\header {
		title = "Farewell to Camraw"
		meter = "Slow Air"
	}