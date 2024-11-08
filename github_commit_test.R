#github committing test

install.packages("pacman")
library(pacman)
p_load(tidyverse, usethis, targets, quarto, BiocManager, LivingNorwayR, rgbif, checker, remotes, palmerpenguins, datasets, janitor, clock, datefixR)

use_git_config(
  user.name = "ibdj", 
  user.email = "ibdjacobsen@gmail.om"
)

git_vaccinate()
use_git()
use_github()

git_default_branch_rename()
git_default_branch_configure(name = "main")

usethis::create_github_token()

#making a plot of 
plot(iris)


# testing git and pushing
summary(messy_data)

cleaned_data <- messy_data |> 
  clean_names() |> 
  mutate(sex = tolower(sex),
         age = tolower(age), 
         age = case_match(age, c("j","juvenile") ~"juvenile", c("a", "adult") ~"adult"),
         species_name = case_match(species_name, 
                                   c("Lagopus matu","Logopus muta", "Logopus muta", "Lagopus muta") ~"Lagopus muta", 
                                   c("Lagopus lagopus", "Lagopas lagopus") ~"Lagopus lagopus")) |> 
  fix_date_df("date")

smallGame_wide <- smallGame

smallGame_long <- smallGame |> 
  pivot_longer(cols = Halden:ncol(smallGame),
               names_to = "municipality",
               values_to = "number")
  
# testing, trying this notes notes

# i have made a branch, now i'm making changes, i'll commit and push, and you should accept it (:

# watch this