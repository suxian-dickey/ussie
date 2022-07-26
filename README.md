
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ussie

<!-- badges: start -->

[![R-CMD-check](https://github.com/suxian-dickey/ussie/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/suxian-dickey/ussie/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of ussie is to work with European football league data supplied
by the engsoccerdata package. fgf

## Installation

You can install the development version of ussie from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("suxian-dickey/ussie")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ussie)
italy <- uss_make_matches(engsoccerdata::italy, "Italy")
```
