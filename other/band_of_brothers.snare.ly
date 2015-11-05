\version "2.18.2"

#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 19)
\layout {
	indent = 0
	\set Score.markFormatter = #format-mark-box-alphabet
	\context {
		\DrumStaff
		% one line per staff
		\override StaffSymbol.line-positions = #'(0)
		\numericTimeSignature
		}
}
\score {
	\new DrumStaff = "staff_snare" {
		\drummode {
		\compressMMRests {
			\tempo 2. = 32
			\time 3/4
			\override MultiMeasureRest.expand-limit = #3
			R2.*4
		}
		\compressMMRests {
			\bar "||"
			\mark \default
			R2.*35
		}
			\bar "||"
			\tempo 4 = 108
			\mark \default
			\time 4/4
			sn4 \f \tuplet 3/2 {r8 sn8 sn8 } r4 sn4 |
			\grace { sn16 sn16 sn16 sn16} \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } sn4 r4 |
			\grace { sn16 sn16 sn16 sn16} \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn8 } r4

			|
			\time 2/4

			sn2:16(

			|
			\time 4/4

			\tuplet 3/2 { sn4) sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8 sn8 sn8} \tuplet 3/2 { sn8 sn8 sn8}

			\bar "||"
			\mark \default
			\repeat percent 7{
				\grace sn8 sn4 \tuplet 3/2 { r8 sn8 sn8 } sn4 r4 |
				\grace { sn16 sn16 sn16 sn16 } \tuplet 3/2 {sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } sn4 r4 |
			}

			\grace sn16 \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8} |
			sn8 r8 r4 sn2:32( |
			\tuplet 3/2 { sn4) sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn8 } r4 |
			\tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn8 } r4 |
			\tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8} |
			sn8 r8 r4 \grace {sn16 sn16} sn4 \grace {sn16 sn16} sn4 |

			\bar "||"
			\mark \default
			\repeat percent 10 {
				\grace {sn16} sn4 \mf \grace { sn16 sn16 sn16 sn16 } sn4 \grace { sn16 sn16 sn16 sn16 } sn4 \grace { sn16 sn16 sn16 sn16 } \tuplet 3/2 { sn8 sn8 sn8} |
			}
			\tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 }  \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { sn8 sn8 sn8 } |
			\tuplet 3/2 { sn4 \mf\< sn8 }
			\tuplet 3/2 { r8 sn8 sn8 }
			\tuplet 3/2 { sn4 sn8 }
			\tuplet 3/2 { sn8 sn8 sn8 \! }
			|

			\grace { sn16 sn sn sn} \tuplet 3/2 { sn4 \f sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8} |
			sn8 r8 r4 \tuplet 3/2 { sn4 sn sn} |

			\tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 }  \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { sn8 sn8 sn8 } |
			\tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 }  \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { sn8 sn8 sn8 } |
			\tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 }  \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { sn8 sn8 sn8 } |
			sn8 r8 r4 \tuplet 3/2 { sn4 sn sn} |
			sn1:32(

			\bar "||"
			\mark \default
			sn8) \f r8 r4 r2 |
			\tuplet 3/2 {sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8. sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |
			\grace {sn16} sn8 r8 r4 r2
			\tuplet 3/2 {sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8 sn16 sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |

			\bar "||"
			\mark \default

			\repeat percent 3 {
				\tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8 sn16 sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |
			}
			\tuplet 3/2 {sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8 sn8 sn8 } \grace sn16 \tuplet 3/2 { sn8 sn sn} |
			\repeat percent 3 {
				\tuplet 3/2 {sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8 sn16 sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |
			}
			\tuplet 3/2 {sn4 \< sn8 } \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8 sn16 sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |

			\tuplet 3/2 { sn4 \ff sn8} \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn8 } \tuplet 3/2 { r8 sn8 sn8 }
			sn8 r8 r4 r2 |

			\tuplet 3/2 { sn4 sn8} \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8. sn16 sn8 } \tuplet 3/2 { sn8 sn sn } |
			\tuplet 3/2 { sn4 sn8} \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn4 sn sn }
			\tuplet 3/2 { sn4 sn8} \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8 sn16 sn16 sn8 } \tuplet 3/2 { sn8 sn sn } |
			sn8 r8 r4 \tuplet 3/2 { sn4 sn sn } |
			\tuplet 3/2 { sn4 \fp\< sn8} \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8. sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |
			\tuplet 3/2 { sn4 sn8} \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8. sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |

			\bar "||"
			\tuplet 3/2 { sn4\ff sn8} \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8. sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |
			\tuplet 3/2 { sn4 sn8} \tuplet 3/2 { r8 sn8 sn8 } \tuplet 3/2 { sn8. sn16 sn8 } \tuplet 3/2 { sn8 sn sn} |
			sn8 r8 r4 sn4:32( sn4:32)( |
			\tuplet 3/2 { sn8) sn8 r8 } \tuplet 3/2 { r8 sn8 sn8 }  sn8 r8 r4
		}
	}
	\header {
		title = "Band of Brothers"
		subtitle = "for the Edinburgh Military Tattoo 2005"
		arranger = "Michael Kamen, arr. Richard Barriball"
		instrument = "Snare Drum"
		meter = ""
	}

}


