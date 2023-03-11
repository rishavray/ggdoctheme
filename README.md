# ggdoctheme
This is a redesigned ggplot theme built for out of the box scientific publication
Use this theme with your normal ggplot function

Run the code like this in R
```
iris %>% 
ggplot(aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
geom_point() +
facet_wrap(~Species) +
theme_doc()+
labs(x = "Length", y = "Width")
```
This creates a plot like this
![plot](./figures/plot.png)