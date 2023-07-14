# f4f1eb
<sub>yes name-choosing is hard</sub>

A Typst theme for a nice and simple looking letter that's not completely black and white. Inspired by a Canva theme.

Features:
  * A neutral-warm beige background that feels cosier and softer to the eyes than pure white, while still looking kinda white-ish
  * Short content is vertically padded to look a bit more centered
  * Long content overflows gracefully on as many pages as necessary

| Basic example                                            | Short text (vertically centered)                       | Multi-page overflowing text                          |
|----------------------------------------------------------|--------------------------------------------------------|------------------------------------------------------|
| [`_rendered/demo_medium.pdf`](_rendered/demo_medium.pdf) | [`_rendered/demo_short.pdf`](_rendered/demo_short.pdf) | [`_rendered/demo_long.pdf`](_rendered/demo_long.pdf) |

# Usage

  * If using Typst locally, install the [HK Grotesk](https://fonts.google.com/specimen/Hanken+Grotesk) font
      * _Note: it is already installed on the https://typst.app/ IDE_
  * Move [`template.typ`](template.typ) in the same directory as your entry point file (usually `main.typ`)
  * Insert the setup `show` statement
    ```typst
    #import "template.typ": *

    #show: project.with(
      title: [Anakin \ Skywalker],
      from_details: [
        Appt. x, \
        Mos Espa, \
        Tatooine \
        anakin\@example.com \ +999 xxxx xxx
      ],
      to_details: [
        Sheev Palpatine \
        500 Republica, \
        Ambassadorial Sector, Senate District, \
        Galactic City, \ Coruscant
      ],
    )

    Dear Emperor, ...
    ```
  * If your text overflows on multiple pages, you might want to add [page numbering](https://typst.app/docs/reference/layout/page/#parameters-numbering), as shown in [`demo_long.typ`](demo_long.typ) (line 3)
  * Don't hesitate to edit the template if it doesn't exactly fit your needs

# Parameters

```typst
  background: rgb("f4f1eb"), # Override the background color (why would you :sad:)
  title: "",                 # Set the top-left title. It looks best on two lines
  from_details: none,        # Letter sender (you) details
  to_details: none,          # Letter receiver details
  margin: 2.1cm,             # Page margin
  vertical_center_level: 2,  # When the content is small, it is vertically centered a bit, but still kept closer to the top. This controls how much. Setting to none will disable centering.
  body
```

# License

  * `template.typ` is licensed as CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/legalcode)
  * The demo files are licensed as CC0 (https://creativecommons.org/publicdomain/zero/1.0/legalcode)
  * Any document fully or partially generated using this template may be licensed however you wish
