install.packages('knitr')
install.packages('kableExtra')
install.packages('ggplot2')
install.packages('dplyr')
require(devtools)
install_version("rmarkdown", version = "2.13", repos = "https://cran.r-project.org")
update.packages(ask = FALSE, checkBuilt = TRUE)
packages = c("knitr","kableExtra","ggplot2","dplyr")
package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)
