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
test_that("various argument values result in a list", {
   expect_true(is.list(fars_read_years(2013:2015)))
   expect_true(is.list(fars_read_years(c(2013,2014))))
   expect_true(is.list(fars_read_years(2013)))
})
expect_is(fars_read_years(2013:2015)[[1]],"tbl_df")
expect_warning(fars_read_years(2012))

# fars_summarize_years
expect_is(fars_summarize_years(2013:2015),"tbl_df")
expect_warning(expect_error(fars_summarize_years(2012)))
expect_error(expect_warning(fars_summarize_years(2012)))
expect_is(fars_summarize_years(c(2013,2014)),"tbl_df")
expect_is(fars_summarize_years(2013),"tbl_df")

# fars_map_state
expect_warning(expect_error(fars_map_state('FL',2014)))
expect_error(fars_map_state('3',2014))