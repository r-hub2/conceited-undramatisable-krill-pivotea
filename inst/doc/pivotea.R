## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(pivotea)
library(dplyr)
library(ggplot2)

## -----------------------------------------------------------------------------
hogwarts |>
  pivot(row = "hour", col = "wday", value = c("subject", "teacher", "room"), split = c("house", "grade"))
starwars |>
  pivot(row = "homeworld", col = "species", value = "name", split = "sex")
msleep |>
  pivot(row = "vore", col = "conservation", value = "name") |>
  na2empty() |>
  print(n = Inf)
as_tibble(Titanic) |>
  pivot(row = "Age", col = c("Sex", "Survived"), value = "n", split = "Class")
diamonds |>
  pivot(row = "cut", col = "color", value = "price", split = "clarity")

