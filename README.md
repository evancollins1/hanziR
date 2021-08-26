# hanziR

An R package to show static images and dynamic stroke animations of Chinese characters.

To install and load `hanziR`, use the `install_github` function in the `devtools` package.

```{r}
require(devtools)
install_github("evancollins1/hanziR")
library(hanziR)
```

This simple package has two functions and two use cases.

## Functions

The function `draw_static_hanzi` produces a static image of the specified Chinese character.

It takes the following input arguments:

- `hanzi`: A character string of one Chinese character (e.g., "你"); no default

- `width`: A character string for width of figure (e.g., "50%" or "50px"); defaults to "100%"

- `align`: A character string for alignment of figure (i.e., "center" or "left"); defaults to "center"

- `background-color`: A character string for figure color in CSS format (i.e., color name, HEX value, RGB value, or RGBA value)

____

The function `draw_animated_hanzi` produces a stroke order animation of the specified Chinese character.

It has the same input arguments as `draw_static_hanzi`.


## Use Cases

The first use case is to generate these visuals in R markdown documents. To do this, simply run the `hanziR` function(s) in a code chunk and set the code chunk `knitr` arguments to the following: `results='asis', message=F`.

```{r}
draw_static_hanzi("陈", width = "50%", align = "center", background_color = "red")
```



 For static images, perhaps the user would like to include their name as a stylistic image.


## References

This package refers to the dictionary of .svg files created from the [makemeahanzi](https://github.com/skishore/makemeahanzi) project.





