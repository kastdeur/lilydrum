\version "2.18.2"

\include "lilydrum.ly"

\score {
    \drums{
        \time 6/8

        % Part 1
            \repeat volta 2 {
              \partial 8 d16. g32 |
              d8:32( d8.)-> g16 d4:32( d8) |
              \dragd d16. d32-> g16. g32 \flamd d8 d4.:32( |
              d4) d16. g32 d8:32( d8) g8 |
              \flamd d16. g32 d16. \flamg g32 d16. g32 \flamd d4 d16. d32 |

              \break
  
              d8:32( d8.)-> g16 d4:32( d8) |
              \dragd d16. d32-> g16. g32 \flamd d8 d4:32( d16.) g32 |
              d8:32( g16.) d32-> g16. g32 d8:32( g16.) d32-> g16. g32 |
              d4.:32( d4)
  
            }

        % Part 2 ( Part 2.2 = Part 1)
            d8:32(
            g4) \flamd d16. g32 d8:32( g8) \flamd d8 |
            d32-> g32 d32 g32 d32 g32 d32-> g32 d32 g32 d32 g32  d4-> d8:32( |
            g4) \flamd d16. g32 d8:32( g8.) g16 |
            d4.:32( d4) d8:32( |

            \break

            g4) \flamd d16. g32 d8:32( g8) \flamd d8 |
            d32-> g32 d32 g32 d32 g32 d32-> g32 d32 g32 d32 g32 d4-> \flamd d16. g32 |
            d8:32( g16.) d32-> g16. g32 d8:32( g16.) d32-> g16. g32 |
            d4.:32( d4)
    }
}

\header {
   meter = "Slow March"
    title = "Alexander MacKenzie"
    composer = "E.T. de Boone, 2015"
    instrument = "Side"
}
