set_folders.R <- function(path = getwd()){
  ## first level
  dir.create("project")
  ### TODO: add README per folder
  ## main folders of a project
  sapply(file.path(paste("project", c("results","text", "submission"),
               sep = "/")), 
         dir.create)
  ## main folders of results
  sapply(file.path(paste("project/results", 
                  c("raw_data","clean_data", "scripts", "semi_products"),
                  sep = "/")), 
         dir.create)
  ## main folders of text
  sapply(file.path(paste("project/text", 
                         c("figures","tables", "supplementary"),
                         sep = "/")), 
         dir.create)
}