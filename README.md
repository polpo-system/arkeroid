# arkeroid

Arkeroid for [polpo](https://github.com/polpo-system/polpo): break the bricks with the ball and
catch the bonuses that fall, in ten rounds. The game draws with Gfx over the whole screen; the
paddle follows the mouse.

```
portia.Install arkeroid
```

## Playing

    Arkeroid.Run          a game, drawn over the screen (1024 x 768 at least): a key starts it,
                          the left button sends the ball off, P pauses, Esc ends it (y to confirm)
    Arkeroid.Run 5        start on round 5
    Arkeroid.SpeedOut     a game that shows its speed and frames per second
    Arkeroid.Benchmark    the ball runs by itself as fast as it can, with the speed shown

The best five scores are kept in `Arkeroid.Data`. `tools/Arkeroid.Tool` has these commands to
click.

## What is here

    src/Arkeroid.Mod                       the game
    share/Arkeroid.Data                    the rounds and the best scores
    share/Ark*.bmp, Arkdeskt.jpg, ...      the pictures: bricks, bonuses, paddles, the desk, the
                                           messages
    Ark051.Tool                            the tool text of the original
    tools/Arkeroid.Tool
    test/ArkeroidTest.Mod

Arkeroid 0.51 is by C. Hatz and D. Frank (2000). It comes from Unix Oberon r24 of the ETH Oberon
archive, which has the source in src/contr/Games/Arkeroid and the pictures and data in system/.
The first commit has these files as they are there, the second the source as plain text. It
compiles unchanged with all eight of polpo's compilers and needs the packages gfx, images,
images-bmp and images-jpeg. The source came with the authors' copyright line and without other
terms.

## Tests

    ArkeroidTest.Run    4 checks: the game loaded, Arkeroid.Data found, a JPEG and a BMP picture
                        of the game loaded; it needs the desktop's display

The license is GPL-3 (`LICENSE`); ETH distributed Arkeroid with ETH Oberon, whose license is in
`LICENSE.ETH`.
