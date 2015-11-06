\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new PipeBandDrumStaff {
		\time 4/4

		\drummode {
			% Part 1
			\repeat volta 2 {
				\flamd d8.-> \tuplet 3/2 { g32 d32 d32 } g8. \dragd d16 \tuplet 3/2 { d16 g d g d8 } g4:32(-> |
				d8.) g16 \tuplet 3/2 { d8:32( d8) g8-> } \tuplet 3/2 { d8 g8 \dragd d8 } \tuplet 3/2 { d16 g d g d8 } |
			}
			\alternative {
				{
				  g8.-> \tuplet 3/2 { g32 d32 d32 } \tuplet 3/2 { g8 d8 \flamg g8 } \tuplet 3/2 { d32 g32 g32 } d16 g8  \flamd d8. g16 |
				  \tuplet 3/2 { \flamd d8 g8 \flamg g8 } \tuplet 3/2 { d8 \flamd d8 g8-> } \tuplet 3/2 { d8 g8 d16-> g16 } \tuplet 3/2 { d16 g16 d8 g8 }
				}
				{
				  g8.-> g16 \tuplet 3/2 { d16-> g d g \dragd d8 } \tuplet 3/2 { d16 g d-> g d g } d8. g16 |
				  \flamd d8. \tuplet 3/2 { g32 d32 d32 } \tuplet 3/2 { g8 d8 \flamg g8 } \tuplet 3/2 { d16 g d g d8 } \tuplet 3/2 { g8 d g }
				}
			}

			\break

			% Part 2
			\repeat volta 2 {
				d4:32(-> \tuplet 3/2 { d16) g16 d16 } \flamg g8 \tuplet 3/2 { d8 g d } d4:32( |
				d8.) \flamg g16 \tuplet 3/2 { d8 g d } \tuplet 3/2 { \flamd d16 g d } g8-> \tuplet 3/2 { d8 g d } |
			}
			\alternative {
				{
				  \flamd d8. g16 \tuplet 3/2 { d16-> g d d g-> d } \tuplet 3/2 { g16 g d8-> g }   d8.-> \tuplet 3/2 { g32 d d } |
				  g8. d16  \tuplet 3/2 { \flamg g8 d \flamg g } \tuplet 3/2 { d8 g d16-> g } \tuplet 3/2 { d16 g d8 g }
				}
				{
				  \flamd d8. g16 \tuplet 3/2 { d16 g d g d8-> } \tuplet 3/2 { g8 d16 g16 d16 g16 } d4:32(-> |
				  d8.) g16 \tuplet 3/2 { \flamd d8 g \flamg g } \tuplet 3/2 { d16 g d g d8 } \tuplet 3/2 { d8 g d }
				}
			}
		}% End of drums %
	}
	\header {
		title = "A. A. Cameron's Strathspey"
		meter = "Strathspey"
		composer = "G. Clark, 1988"
		instrument = "Side"
	}
}