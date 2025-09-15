library(dplyr)

mtcars |>
  mutate(x = cyl * wt) |>
  head(10)
