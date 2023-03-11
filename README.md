# ggdoctheme ![plot](./figures/imgfile.png)
This is a redesigned ggplot theme built for out of the box scientific publication
Use this theme with your normal ggplot function.

The package depends on ggplot2 and ggthemes. Installing the package using devtools.

```
devtools::install_github("rishavray/ggdoctheme")
```

Run the code like this in R
```
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
geom_point() +
facet_wrap(~Species) +
theme_doc()+
labs(x = "Length", y = "Width")
```
This creates a plot like this
![plot](./figures/plot.png)