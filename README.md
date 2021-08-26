# hanziR

An R package to show static images and dynamic stroke animations of
Chinese characters.

To install and load `hanziR`, use the `install_github` function in the
`devtools` package.

``` r
require(devtools)
```

    ## Loading required package: devtools

    ## Loading required package: usethis

    ## Error in get(genname, envir = envir) : object 'testthat_print' not found

``` r
install_github("evancollins1/hanziR")
```

    ## Skipping install of 'hanziR' from a github remote, the SHA1 (3fdc32b0) has not changed since last install.
    ##   Use `force = TRUE` to force installation

``` r
library(hanziR)
```

This simple package has two functions and two use cases.

## Functions

The function `draw_static_hanzi` produces a static image of the
specified Chinese character.

It takes the following input arguments:

-   `hanzi`: A character string of one Chinese character (e.g., “你”);
    no default

-   `width`: A character string for width of figure (e.g., “50%” or
    “50px”); defaults to “100%”

-   `align`: A character string for alignment of figure (i.e., “center”
    or “left”); defaults to “center”

-   `background-color`: A character string for figure color in CSS
    format (i.e., color name, HEX value, RGB value, or RGBA value)

------------------------------------------------------------------------

The function `draw_animated_hanzi` produces a stroke order animation of
the specified Chinese character.

It has the same input arguments as `draw_static_hanzi`.

## Use Cases

The first use case is to generate these visuals in R markdown documents.
To do this, simply run the `hanziR` function(s) in a code chunk and set
the code chunk `knitr` arguments to the following:
`results='asis', message=F`.

``` r
draw_static_hanzi("陈", width = "50%", align = "center", background_color = "red")
```

<center>
<img src = 'https://raw.githubusercontent.com/skishore/makemeahanzi/master/svgs-still/38472-still.svg' style = 'width:50%; background-color:red; border-radius: 8%'>
</center>

``` r
draw_animated_hanzi("陈", width = "200px", align = "center", background_color = "a86f32")
```

<center>
<img src = 'https://raw.githubusercontent.com/skishore/makemeahanzi/master/svgs/38472.svg' style = 'width:200px; background-color:a86f32; border-radius: 8%'>
</center>

The second use case is to utilize the `hanzi` package to generate
injectable HTML+CSS code for these visuals. This HTML+CSS code could be
useful for having greater flexibility in markdown documents and/or
building out web deployments. To view this HTML+CSS code, simply run the
functions *without* setting the knitr code chunk option
`results='asis'`. In other words, simply run the functions in R console
or in a code chunk with default options.

``` r
draw_animated_hanzi("陈", width = "200px", align = "left", background_color = "rgb(154, 50, 168)")
```

    ## Remember to set code chunk argument: {r, results='asis', message=F}

    ## <left><img src = 'https://raw.githubusercontent.com/skishore/makemeahanzi/master/svgs/38472.svg' style = 'width:200px; background-color:rgb(154, 50, 168); border-radius: 8%'></left>

## References

This package refers to the dictionary of .svg files created from the
[makemeahanzi](https://github.com/skishore/makemeahanzi) project.

## Future Directions

In the second version of the `hanziR` package, I would like to add the
following features:

-   Be able to contiguously graph more than one Chinese character and
    sync stroke order animations

-   Be able to repeat stroke order animations and set animation times
    manually
