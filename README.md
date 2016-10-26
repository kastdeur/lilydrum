# pipeband-drumming
First trial with github, purpose is to set up a lilypond file in the same way as there is a bagpipe.ly (see github.com/svenax/bagpipemusic). Main focus is on pipeband snare drumming. 

Somehow, the drums part in lilypond does not cover a notation with only right left. That is right is above the line and left is below it. In the same manner as the bagpipe.ly file, flams and drags are defined as a shortcut.

There has been a lilypond include file earlier made by Simon Froger (which includes all of the above). So first version is a shameless copy.
This is meant to extend or translate some parts.

The original file can still be found at http://lsr.di.unimi.it/LSR/Snippet?id=970

As the repo has been torn apart to separate these files from an actual music repo, you can find most of my music on [github](github.com/kastdeur/pipeband-music), there's even a ['master repo'](github.com/kastdeur/pipeband-drumming) which should set up most of the environment needed to compile this music (also pulling in [svenax's bagpipemusic](github.com/svenax/bagpipemusic)).

##TODO
 * ~~See if aliases work~~ `foo = { \bar }`
 * show 8th and 16th beats in autobeaming, currently only 8ths:  d32[[ g] d[ g]] d32[[ g] d[ g]]
 * Macro for tutti's (unisons)
	- on just one note
	- with open ending
 * Macro for "Part $m of $n"
 * If 8/16/32/..th notes come before a flam, they have a flag instead of a beam (fixable by explicit beaming, but rather have a good autobeaming)
 * A tuplet beginning with a flam has a strange tuplet beam (slanted) (fixable by putting the flam outside of the tuplet .. However the flam function doesnt work that way (yet))
 * It's customary to have 4 bars per line for portrait and 8 for landscape... (most of the time this can be accomplished by \break-ing every 8 measures and having enough notes in)

 * SIDE sticking
	rimshot				default + cross

 * FLOURISHING			short	long			note	above-note
	ups					\up								arrow-up ( I don't like the arrow I scripted )
	scoop				\scoop							arrow-right-(diag-up then diag-down) [propably start on beginning of note and filter out the last one]
	[further EUSPBA symbols](www.euspba.org/resource/music/EUSPBA_drums_tenorflourishing.pdf)
