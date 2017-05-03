# Lilydrum (pipeband-drumming notation)

Somehow, the drums part in lilypond does not cover a notation with only right left. That is right is above the line and left is below it. In the same manner as the bagpipe.ly file, flams and drags are defined as a shortcut.

There has been a lilypond include file earlier, made by Simon Froger (which includes all of the above). So first version is a shameless copy. 
The original file can still be found at [http://lsr.di.unimi.it/LSR/Snippet?id=970](http://lsr.di.unimi.it/LSR/Snippet?id=970).

[His website (French) can be found here](https://simonfroger.wordpress.com/lilypond/caisse-claire-ecossaise/)

## How to use
---------------------
To make a pipeband drum staff simply use
`\new PipeBandDrumStaff`.
This creates a DrumStaff with a few specific changes.
!! Note that you do not need to use PipeBandDrumStaff to use the rest.

Music needs to be defined in \drummode.
You can use every regular drum character (such as `sn` or `bd`), as `d` and `g` are appended to the list.


```lilypond
\score {
        \header { title = "Standards 6/8" }
        \new PipeBandDrumStaff {
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
```


### Embellishments (Side)
-----------------
Flams and Drags can be added using `\flam` and `\drag`. They can determine whether to be left or right by themselves for simple expressions.
If a certain hand is needed they can be inserted directly by appending `d` or `g` to `flam`,`drag`,..
A `\flam d` is equal to `\flamd d`.

There are currently 4 such shortcuts:
 * `\flam` - A Flam
 * `\drag` - A Drag                                                  
 * `\ruff` - A Ruff
 * `\sruff` - A Swiss Ruff

### Unison Brackets (Side)
------------------
Unison Brackets are triggered using `\dr`. 
They need an endpoint which is defined by `\fr`.

~~You can use `\tutti` for this aswell.
It takes a music expression which is automagically put under brackets.~~~
(not yet)

Appending `dr` to the `\flam`'s  or `\drag`'s triggers the unison bracket.
e.g. `\flamdr` of `\draggdr`.

### Flourishing (Tenor)
-------------
A few flourishes have been added, most are from the [EUSPBA](http://www.euspba.org/resource/music/EUSPBA_drums_tenorflourishing.pdf):
 * `\flourish`
 * `\splitTheFeather`
 * `\cartWheel`
 * `\up`
 * `\blfy`   - butterfly
 * `\rblfy`  - reverse butterfly
 * `\rthrow` - throw right
 * `\lthrow` - throw left
 * `\bthrow` - throw both
 * `\rpush`  - push right
 * `\lpush`  - push left
 * `\bpush`  - push both
 * `\andrewStop` - St. Andrew's Stop
 * `\stop`


Scoops have not been created yet.

## TODO
--------------------------
 * ~~See if aliases work~~ `foo = { \bar }`
 * show 8th and 16th beats in autobeaming, currently only 8ths:  d32[[ g] d[ g]] d32[[ g] d[ g]]
 * Macro for tutti's (unisons)
    - on just one note
    - with open ending
 * Macro for "Part $m of $n"
 * If 8/16/32/..th notes come before a flam, they have a flag instead of a beam 
 (fixable by explicit beaming, but rather have a good autobeaming)
 * A tuplet beginning with a flam has a strange tuplet beam (slanted)
(fixable by putting the flam outside of the tuplet .. However the flam function doesnt work that way (yet))
 * It's customary to have 4 bars per line for portrait and 8 for landscape... (most of the time this can be accomplished by \break-ing every 8 measures and having enough notes in)

 * rimshot    `defaultnote + cross` 
 * MIDI supporting:
	- switching sound for Bass, Tenor and Side
	- rolls (only for Sides)

 * scoop    `\scoop` arrow-right-(diag-up then diag-down) 
[propably start on beginning of note and filter out the last one, figure out how to get positions from these notes ]
 * [further flourish symbols](http://www.euspba.org/resource/music/EUSPBA_drums_tenorflourishing.pdf)
