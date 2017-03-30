# fars_read
expect_is(fars_read(system.file("extdata","accident_2013.csv.bz2",package="fars")),"tbl_df")
expect_error(fars_read("nonexistentfile.ext"))
            
# make_filename
test_that("various argumpent types generate correct file name", {
   expect_equal(make_filename(2014),"accident_2014.csv.bz2")
   expect_equal(make_filename('2014'),"accident_2014.csv.bz2")
   expect_equal(make_filename(2015-1),"accident_2014.csv.bz2")
})

# fars_read_years
test_that("fars_read_years result in a list", {
   expect_true(is.list(fars_read_years(2014)))
})
expect_is(fars_read_years(2014)[[1]],"tbl_df")
expect_warning(fars_read_years(2014))

# fars_summarize_years
expect_is(fars_summarize_years(2014),"tbl_df")
expect_warning(expect_error(fars_summarize_years(2014)))
expect_is(fars_summarize_years(c(2014)),"tbl_df")

# fars_map_state
expect_warning(expect_error(fars_map_state('FL',2014)))
expect_error(fars_map_state('3',2014))