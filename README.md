# *FadeFX*

**Table of contents**
*   [Definition](#definition)
*   [Details](#details)
*   [Requirements](#requirements)
*   [Contact](#contact)
*   [Useless facts](#useless-facts)

----

## Definition

The *FadeFX* function allows printing a string with a fading effect, e.g. white to black and vise versa in a loop.

You can find more text printing effects [here](https://github.com/urbanware-org/textfx).

[Top](#fadefx)

## Details

The given string is printed using two color numbers taken from a color palette used by the shell, see [here](https://raw.githubusercontent.com/urbanware-org/salomon/master/wiki/salomon_256colors.png).

The delay of fading must be given in seconds, so you can use a slow fade effect or fast one using milliseconds, which looks the more kind of flashing. Notice that flashing can lead to seizures if you are prone to such.

### **Usage**

The function can take four arguments:

1.  The string that should be faded.
1.  The minimum color number, e.g. `232` for black.
1.  The maximum color number, e.g. `255` for white.
1.  The fade delay (in seconds) between each color, e.g. `0.02`.
1.  An optional non-fading string that should be printed before the fading text.
1.  An optional non-fading string that should be printed after the fading text.

#### Examples

The following code

```bash
fadefx "This is an example." 232 255 0.02
```

produces this output:

<img src="https://raw.githubusercontent.com/urbanware-org/fadefx/master/gif/fadefx.gif" alt="FadeFX sample output">

You can also print an additional string before and after the fading one, for example:

```bash
fadefx "example" 232 255 0.02 "This is an " " with additonal strings."
```

Furthermore, those strings also allow custom colors. However, they must be given in the classic *Bash* shell way:

```bash
fadefx "example" 232 255 0.02 "\e[96mThis\e[0m \e[93mis\e[0m an " " with \e[92mcolors\e[0m in \e[95madditonal\e[0m strings."
```

[Top](#fadefx)

## Requirements

The function was written on the *Bash* shell, which is the default shell on many *Unix*-like systems (or at least *Linux* distributions). It may also work with other shells, however, there is no guarantee for that.

[Top](#fadefx)

## Contact

Any suggestions, questions, bugs to report or feedback to give?

You can contact me by sending an email to [dev@urbanware.org](mailto:dev@urbanware.org) or by opening a *GitHub* issue (which I would prefer if you have a *GitHub* account).

[Top](#fadefx)

## Useless facts

*   The project name is an abbreviation for *Fade Effects*.

[Top](#fadefx)