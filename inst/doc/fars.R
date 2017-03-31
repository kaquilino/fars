## ----fars_read-----------------------------------------------------------
library(fars)
test_data <- system.file("extdata", "accident_2014.csv.bz2", package = "fars")
fars_read(test_data)

## ----make_filename-------------------------------------------------------
make_filename(2014)
make_filename('2014')
make_filename(2015-1)

## ----fars_read_years-----------------------------------------------------
fars_read_years(2014)

## ----fars_summarize_years------------------------------------------------
library(dplyr)
fars_summarize_years(2014)

## ----fars_map_state------------------------------------------------------
library(maps)
fars_map_state(1,2014)
fars_map_state(4,2014)

