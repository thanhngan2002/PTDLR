library(nycflights13)
library(ggplot2)
library(dplyr)
# Cau 1: Ve do thi scatter
# lọc dữ liệu chỉ cho Alaska Airlines
all_alaska_flights <- flights %>% filter(carrier == "AS")
# Scatterplot
ggplot(data = all_alaska_flights, mapping = aes(x = dep_delay, y = arr_delay))+
  geom_point()
# Cau 2: Ve do thi Linegraphs
early_january_weather <- weather %>% filter(
  origin == "EWR" & month == 1 & day <= 15)
ggplot(data = early_january_weather, mapping = aes(x = time_hour, y = temp)) +
  geom_line()
# Cau 3: Do thi histograms
ggplot(data = weather, mapping = aes(x = temp)) +
geom_histogram()
# Cau 4: Bieu do boxplot
ggplot(data = weather, mapping = aes(x = factor(month), y = temp)) +
  geom_boxplot()
# Cau 5: Bi???u ð??? barplot
ggplot(data = flights, mapping = aes(x = carrier)) +
  geom_bar()
