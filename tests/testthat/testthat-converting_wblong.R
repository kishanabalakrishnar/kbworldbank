test_that("converting_wblong works", {
  expect_equal(nrow(converting_wblong(maternal_mortality, "maternal_mortality")), 3720)
  expect_equal(as.numeric(converting_wblong(maternal_mortality, "maternal_mortality")[1,3]), 1450)
})
