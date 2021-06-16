#' Set up the minimal git for reproducibility
#' 
#' 
#' @example 
#' source("set_folders.R")
set_kit.R <- function(project_name = "project"){
  ## Create file structure
  ### first level
  dir.create(project_name)
  #### TODO: add README per folder
  ### main folders of a project
  sapply(file.path(paste(project_name, c("results","text", "submission"),
                         sep = "/")), 
         dir.create)
  ### main folders of results
  sapply(file.path(paste(file.path(project_name,"results"), 
                         c("raw_data","clean_data", "scripts", "semi_products"),
                         sep = "/")), 
         dir.create)
  ### main folders of text
  sapply(file.path(paste(file.path(project_name,"text"), 
                         c("figures","tables", "supplementary"),
                         sep = "/")), 
         dir.create)
  
  ## Create the README file
  file.create(file.path(project_name, "README.md"))
  ## TODO: add basic description?
  ## Create the minimal notebook
  sink(file.path(project_name, "notebook.Rmd"))
  cat("---")
  cat("\n")
  cat("title: \"Your title here\"")
  cat("\n")
  cat("output: pdf_document")
  cat("\n")
  cat("---")
  cat("\n")
  cat("<!-- ---------------------------------- VERY MINIMAL INTRO TO RNOTEBOOKS ---------------------------------- -->")
  cat("\n\n")
  cat("<!-- Just erase this whole block, if you already know how it works) -->")
  cat("\n\n")
  cat("<!-- The basic idea of notebooks is having your text written without any marking: -->")
  cat("\n\n")
  cat("\"Unmarked\" text to show you how it works.")
  cat("\n\n")
  cat("<!-- and code is put inside blocks like this (also called 'chunks'): -->")
  cat("\n\n")
  cat("```{r}")
  cat("\n")
  cat("print(\"This is an example of a code block\")")
  cat("\n")
  cat("```")
  cat("\n")
  cat("<!-- Very important, check the options of how much of your code and outputs you want to show when compiling your notebook: -->")
  cat("<!-- https://bookdown.org/yihui/rmarkdown/r-code.html -->")
  cat("\n\n")
  cat("<!-- As explained above, these are defined in your code chunks. -->")
  cat("\n\n")
  cat("<!-- ----------------------------- END OF VERY MINIMAL INTRO TO RNOTEBOOKS -------------------------------- -->")
  cat("\n\n")
  cat("```{r set-up, include = FALSE}")
  cat("\n")
  cat("## set up objects with the paths to folders you will often use. This will make it easier to call them when writing outputs")
  cat("\n")
  cat("## check the examples folder for, well, examples")
  cat("\n")
  cat("data_dir <- file.path(\"results\", \"clean_data\") ## do NOT play with stuff in raw_data. That is your back-up")
  cat("\n")
  cat("scripts_dir <- file.path(\"results\", \"scripts\")")
  cat("\n")
  cat("suppl_dir <- file.path(\"results\", \"supplementary\")")
  cat("\n")
  cat("semiprods_dir <- file.path(\"results\", \"semi_products\")")
  cat("\n")
  cat("figures_dir <- file.path(\"text\", \"figures\")")
  cat("\n")
  cat("tables_dir <- file.path(\"text\", \"tables\")")
  cat("\n")
  cat("```")
  cat("\n\n")
  cat("Your work.")
  cat("\n\n")
  cat("*R version, the OS and attached or loaded packages:*")
  cat("\n")
  cat("<!-- Leave this so people know the software they need to reproduce your work. -->")
  cat("\n")
  cat("```{r}")
  cat("\n")
  cat("sessionInfo()")
  cat("\n")
  cat("```")
  sink()
}
