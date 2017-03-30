[![Build Status](https://travis-ci.org/kaquilino/fars.svg?branch=master)](https://travis-ci.org/kaquilino/fars)

# fars

The `fars` package provides various functions to read and summarize data from the Fatality Analysis Reporting System (FARS) at https://www.nhtsa.gov/research-data/fatality-analysis-reporting-system-fars. 

## Installation

You can install fars from github with:

```R
# install.packages("devtools")
devtools::install_github("fars/kaquilino")
```

## Example

This is a basic example which shows you how to read a FARS data file:

```R
fars_read(system.file("extdata","accident_2014.csv.bz2",package="fars"))
```
