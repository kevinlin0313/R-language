library(ggplot2)

plot_1<-ggplot(cars, aes(x=speed, y=dist))+geom_point()
plot_2<-ggplot(cars, aes(x=speed, y=dist))+geom_line()

plot_1
plot_2

