#github committing test

install.packages("pacman")
library(pacman)
p_load(tidyverse, usethis, targets, quarto, BiocManager, LivingNorwayR, rgbif, checker, remotes)

use_git_config(
  user.name = "IBDJ", 
  user.email = "ibdjacobsen@gmail.om"
)
git_vaccinate()
use_git()
