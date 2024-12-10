# required R packages
required_packages <- c(
  "readr",        # read CSV files
  "tidyverse",    # data wrangling and visualization
  "nnet",         # multinomial logistic regression (multinom)
  "ggplot2",      # data visualization
  "jmv",          # statistical analysis functions
  "dplyr",        # data manipulation
  "car",          # regression diagnostics
  "lmtest",       # testing linear models
  "MASS"          # additional statistical functions
)

# check packages are installed
installed_packages <- rownames(installed.packages())
for (pkg in required_packages) {
  if (!(pkg %in% installed_packages)) {
    install.packages(pkg)
  }
}

# load required libraries
lapply(required_packages, library, character.only = TRUE)
