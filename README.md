# ggdoctheme ![plot](./figures/icon.png)
This is a redesigned ggplot theme built to be used for out of the box scientific publication.
Use this theme with your normal ggplot function.

### Installation
The package depends on ggplot2 and ggthemes. Install the package using devtools.

```
devtools::install_github("rishavray/ggdoctheme")
```
### Theme demo
Run the code like this in R. 
```
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
geom_point() +
facet_wrap(~Species) +
theme_doc(grid = FALSE)+
labs(x = "Length", y = "Width")
```
This creates a plot like this
![plot](./figures/plot.png)

### Customization
The grid function can be switched on and off by setting the **grid** parameter TRUE or FALSE.
More customization to be followed.