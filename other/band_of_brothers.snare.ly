\version "2.18.2"

\include "lilydrum.ly"

\score {
	\new DrumStaff = "staff_snare" {
		\set DrumStaff.drumStyleTable = #(alist->hash-table pipeband-style)

		\drummode {
			\time 3/4
			R1*4
			\bar "||"
			s16^ \markup "A"
			R1*35
			\bar "||"

			\time 4/4

			s16^ \markup "B"
			sn4 \tuplet 3/2 {r8 sn8 sn8 } r4 |
			\grace { sn16 sn16 sn16 sn16} \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } sn4 r4 |
			\grace { sn16 sn16 sn16 sn16} \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn8 } r4

			\time 2/4

			sn2:16(

			\time 4/4

			\tuplet 3/2 { sn4) sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8 sn8 sn8} \tuplet 3/2 { sn8 sn8 sn8}
			\bar "||"
			s16^\markup "C"

			\repeat volta 2 {
				\grace sn8 sn4 \tuplet 3/2 { r8 sn8 sn8 } sn4 r4 |
				\grace { sn16 sn16 sn16 sn16 }
			}

		}
	}

}

	\header {
		title = "Band of Brothers"
		subtitle = "for the Edinburgh Military Tattoo 2005"
		arranger = "Michael Kamen, arr. Richard Barriball"
		instrument = "Snare Drum"
		meter = ""
	}
