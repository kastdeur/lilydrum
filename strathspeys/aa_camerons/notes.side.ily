% 4/4 A. A. Cameron's Strathspey
% Side
\version "2.18.2"
composerSide = "G. Clark, 1988"
snareAA = \drummode {
	\flamd d8.-> \tuplet 3/2 { g32 d32 d32 } g8.[ \dragd d16] \tuplet 3/2 { d16 g d g d8 } g4:32(-> |
	d8.) g16 \tuplet 3/2 { d8:32( d8) g8-> } \tuplet 3/2 { d8[ g8 \dragd d8] } \tuplet 3/2 { d16 g d g d8 } |
}
snareABA = \drummode {
	g8.-> \tuplet 3/2 { g32 d32 d32 } \tuplet 3/2 { g8 d8 \flamg g8 } \tuplet 3/2 { d32 g32 g32 } d16 g8  \flamd d8. g16 |
	\flamd \tuplet 3/2 { d8 g8 \flamg g8 } \tuplet 3/2 { d8 \flamd d8 g8-> } \tuplet 3/2 { d8 g8 d16-> g16 } \tuplet 3/2 { d16 g16 d8 g8 }
}
snareABB = \drummode {
	g8.-> g16 \tuplet 3/2 { d16[-> g d g \dragd d8] } \tuplet 3/2 { d16 g d-> g d g } d8. g16 |
	\flamd d8. \tuplet 3/2 { g32 d32 d32 } \tuplet 3/2 { g8 d8 \flamg g8 } \tuplet 3/2 { d16 g d g d8 } \tuplet 3/2 { g8 d g }
}

% Part 2
snareBA = \drummode {
	d4:32(-> \tuplet 3/2 { d16) g16 d16 } \flamg g8 \tuplet 3/2 { d8 g d } d4:32( |
	d8.) \flamg g16 \tuplet 3/2 { d8 g d } \tuplet 3/2 { \flamd d16 g d } g8-> \tuplet 3/2 { d8 g d } |
}
snareBBA = \drummode {
	\flamd d8. g16 \tuplet 3/2 { d16-> g d d g-> d } \tuplet 3/2 { g16 g d8-> g }   d8.-> \tuplet 3/2 { g32 d d } |
	g8. d16  \flamg \tuplet 3/2 { g8 d \flamg g } \tuplet 3/2 { d8 g d16-> g } \tuplet 3/2 { d16 g d8 g }
}
snareBBB = \drummode {
	\flamd d8. g16 \tuplet 3/2 { d16 g d g d8-> } \tuplet 3/2 { g8 d16 g16 d16 g16 } d4:32(-> |
	d8.) g16 \flamd \tuplet 3/2 { d8 g \flamg g } \tuplet 3/2 { d16 g d g d8 } \tuplet 3/2 { d8 g d }
}