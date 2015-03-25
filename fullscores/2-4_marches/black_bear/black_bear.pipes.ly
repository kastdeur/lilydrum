\include "bagpipe_new.ly"
pipes = {


	\time 2/4
    \bagpipeKey
    \quarterBeaming

	% Part 1
	\repeat volta 2 {
		\partial 8 \grg a16. [ b32 ] |
		\thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] |
		\thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] |
		\dble e8 [ \grg b8 ] \grip b8 [ \grg e16 d16 ] |
		\grg c32 [ d16. ] \grg b32 [ \grd c16. ] \grg a16. [ b32 ] \grg c32 [ \grd a16. ] |

		\break

		\thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] |
		\thrwd d8 [ \dbld d8 ] \grg f16. [ d32 ] A16. [ f32 ] |
		\dble e8 [ \grip e8 ] \grg e16. [ g32 ] \grA f32 [ e16. ] |
		\thrwd d8 [ \grg f8 ] \thrwd d8
	}

	\break

	% Part 2 ( Part 2.2 = Part 1)
		e8 |
		\grg a16. [ \grd a32 a16 ] \grd b16 ] \thrwd d8 [ \grg d16 e16 ] |
		\dblg g8 [ \grA f16 e16 ] \grg f32 [ A16. f16. d32 ] |
		\grg a16. [ \grd a32 a16 ] \grd b16 ] \thrwd d8 [ \grg d16 e16 ] |
		\dblg g8 [ \grA f16 e16 ] \grg f32 [ A16. f16. d32 ] |

		\break

		A8 [ a16 \dbla a16 ] \grg c8 [ \grd a16 \dbla a16 ] |
		\grg d8 [ b16 \dblb b16 ] \grg e8 [ c16 \dblc c16 ] |
		\grg d32 [ f16. ] \grg d32 [ f16. ] e16. [ g32 ] \grA f32 [ g16. ] |
		A8 [ \grip A8 ] \grg A16. [ g32 f16. ] e32 ] \bar ".|"
  }
\header {
	title = "The Black Bear Hornpipe"
	meter = "March"
	arranger = "Trad."
	instrument = "Bagpipes"
}