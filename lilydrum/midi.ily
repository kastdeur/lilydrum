% Add standard midi support, preferably able to 
% switch instruments for different staves 
#(newline)
#(display "Midi Support loaded")

midiDrumPitches = 
#(append `(
    (right-hand . ,(ly:make-pitch -2 2 DOUBLE-FLAT))
    (left-hand . ,(ly:make-pitch -2 2 DOUBLE-FLAT))
  )
  midiDrumPitches
)

\midi {
	\context {
		\DrumStaff
		\name PipeBandDrumStaff
		\alias DrumStaff
		drumPitchTable = #(alist->hash-table midiDrumPitches)
	}
	\context {
		\Score
		\accepts "PipeBandDrumStaff"
	}
	\context {
		\StaffGroup
		\accepts "PipeBandDrumStaff"
	}

}

side = {
% (ly:make-pitch -2 2 DOUBLE-FLAT)
% (ly:make-pitch -2 1 NATURAL)
}
bass = {
% (ly:make-pitch -3 6 NATURAL)
% (ly:make-pitch -2 0 NATURAL)
}
tenor = {
% (ly:make-pitch -2 3 NATURAL)
% (ly:make-pitch -2 4 NATURAL)
% (ly:make-pitch -2 5 NATURAL)
% (ly:make-pitch -2 6 NATURAL)
% (ly:make-pitch -1 0 NATURAL)
% (ly:make-pitch -1 1 NATURAL)
% (ly:make-pitch -2 3 NATURAL)
% (ly:make-pitch -2 3 NATURAL)
% (ly:make-pitch -2 3 NATURAL)
% (ly:make-pitch -2 3 NATURAL)
% (ly:make-pitch -2 3 NATURAL)
}
