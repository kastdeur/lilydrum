% This file compiles with at least version 2.19.80
\version "2.19.80"

% Include lilydrum before any music is defined
% it *will* complain otherwise about the d's and the g's
\include "lilydrum.ly"

% Give it a title with standard settings
\header { title = "Standards 6/8" }

% Change Options for printing 
\layout {
  % Remove the indent in the first system
  indent = 0.0
}

% Start the score
\score {
		% We want a drumstaff regularly used for pipebands
		\new PipeBandDrumStaff {
			% Signal lilypond we will be using drumnotation
			\drummode {
				% The time signature is 6/8
				\time 6/8
				% Start the bar as a repeat with an anacrusis
				\repeat volta 2 {
					\partial 8 
					% Regularly the format is A - B - A - C
					% so we use an unfolded repeat with alternatives
					% to keep us from writing A twice
					% You could also use variables here
					\repeat unfold 2 {
						% Start with a seven roll
						% Then continue with a few drags
						% Normally beaming does not need to specified
						% Except for drags, they break the automatic beaming
						d8:32( |
						g8.)[ g16 \drag d8]	d8.[ d16 \drag g8] |
						g8.[ \drag d16 d8]	d8.[ d16 \drag g8] |
					} \alternative {
						% The first alternative
						{
							% The next part is played in unison the first time through
							\tutti {
								\flam d8. d16 g8	d4.:32( |
								d8.) g16 d8	\flam g4 
							}
						}
						% The second alternative
						{
						  % This part is also played in unison the first time through
							\tutti{
								\flam d8. d16:64( d8)	\flam d8. d16 \flam g8 |
								d8.:32( d16) \flam g8	\flam d4 
							}
						}
					}
					% Pad the score a bit so we can make sure we are at the end of a bar
					% This spacing note is of the time we used for the upbeat
					s8 |
				}
				
				% Make sure there is a newline for the next few measures
				\break
				
				% Let's try again with another line
				% This one containing a few triplets
				\repeat volta 2 {
					\partial 8
					\repeat unfold 2 {
						d8:32( |
						\tuplet 3/2 { g8) d g } \flam d8		\tuplet 3/2 { d8 g d } \flam g8 |
						% Note the \flamd, it is needed because \flam does not know which hand the next note is
						% This is a todo
						\tuplet 3/2 { d8 g d-> }		\tuplet 3/2 { g8 d g } \flamd \tuplet 3/2 { d8 g8. d16 } |

					} \alternative {
						% We don't actually need the outermost braces of the alternatives used in the first line
						\tutti {
							\flam d8. d16 g8	d4.:32( |
							d8.) g16 d8	\flam g4
						}

						\tutti{
							\flam d8. d16:64( d8)	\flam d8. d16 \flam g8 |
							d8.:32( d16) \flam g8	\flam d4
						}
					}
					s8 |
				}					
			}
		}
	}
