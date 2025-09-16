
setHook("rstudio.sessionInit", function(newSession) {
  if (newSession)
    message("Welcome to the hands-on part of the Workshop !")
    message("")
    message("Before getting started, please run")
    message("")
    message("  setup_project()")
    message("")
    message("in the R console.")
    message("")
    message("Once instructed, you can restore the settings via")
    message("")
    message("  restore()")
}, action = "append")

setup_project <- function() {
  options(repos=c(CRAN="https://p3m.dev/cran/__linux__/focal/latest",RSPM="https://p3m.dev/cran/__linux__/focal/latest"))
  if (!require(pak,quietly=TRUE)) {utils::install.packages("pak")}
  if (!require(renv,quietly=TRUE)) {pak::pak("renv")}
  if (!require(admiral,quietly=TRUE)) {pak::pak("admiral@1.1.1")}
  options(repos="")
}

restore <- function() {
  options(repos=c(CRAN="https://p3m.dev/cran/__linux__/focal/latest",RSPM="https://p3m.dev/cran/__linux__/focal/latest"))
  message("repo settings restored")
}
