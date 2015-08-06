\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums {
        \time 3/4

		\partial 4
		\flamd d8. g16 |

		\repeat volta 2{
			\flamd d2)\! \flamd d8 g16 d16 |
			\flamd d2 \flamd d8. g16 |
			d4:32( d4:32)( d4:32)(\> |
			d2)\! \flamd d8. g16 |
			\break

			\flamd d2 \flamd d8 g16 d16 |
			\flamd d2 \flamd d8. \flamg g16-> |
			d4:32(\< d4:32)( d4:32)(\> |
			d4:32)(\! d4:32)( d4:32)(\< |
			\break

			d2->)\! d8 g16 d16 |
			\flamd d2 d8. g16 |
			d4:32( d4:32)( d4:32)(\> |
			d2)\! \flamd d8. g16 |
			\break

			\flamd d2 d8 g16 d16 |
			\flamd d2 \dragd d4 |
			d4:32(\> d4:32)( d4:32)(\! |
			d4:32)( d4:32)(\< d4:32)(
			\break
			\bar "||"
		}


    }% End of drums %

	\header {
		title = "Amazing Grace"
		meter = "Hymn"
		composer = "E.T. de Boone, 2015"
		instrument = "Side"
	}
}