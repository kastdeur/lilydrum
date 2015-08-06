\version "2.18.2"
% include the lilydrum file
\include "lilydrum.ly"

% Now a tiny example :
\score {
	\new DrumStaff {
		\drummode {
			\time 6/8
			\partial 8 d8:32(_"7" |
			\repeat volta 2 {
				g8.[) g16 \dragd d8] d8.[ d16 \dragg g8] |
				g8.[ \dragd d16 d8] d8.[ d16 \dragg g8] |
				\flamddr d8. d16 g8 d4.:32(_"13" |
				d8.) g16 d8 \flamg g4 d8:32(_"7" \fr |
				\break
				g8.[) g16 \dragd d8] d8.[ d16 \dragg g8] |
				g8.[ \dragd d16 d8] d8.[ d16 \dragg g8] |
				\flamddr d8. d16:64(_"5" d8) \flamd d8. d16 \flamg g8 |
				d8.:32(_"5" d16) \flamg g8 \flamd d4. \fr |
			}
		}
	}
}