# Computational notebooks to increase productivity and reproducibility in (ecological) research

## A minimal set up to get you started
This repository contains a starter-kit to use so called "computational notebooks" 
(i.e. files containg both code and narrative text) as accompanying pieces for your manuscript.
Besides making your work reproducible, the set up and tutorial included here should facilitate 
the production of computational outputs included in the publication (particularly supplementary materials).

In Figueiredo et al. (in prep), we provide a full tutorial.

### How to use it
In the [kits](https://github.com/ludmillafigueiredo/computational_notebooks/tree/master/kits) 
folder, you can find a `set_kit` function (in both `R` and `Julia` languages).

By default, calling this function (`set_kit()`) creates:

+ a computational notebook (an `RMarkdown` or `Pluto` file) with a skeleton on how to organize
your computational work
![workflow](https://raw.githubusercontent.com/ludmillafigueiredo/computational_notebooks/master/figures/workflow.png)

+ a file structure for easy access of relevant files and less wordy code
![file-structure](https://raw.githubusercontent.com/ludmillafigueiredo/computational_notebooks/master/figures/file_structure.png)

The `project_path` argument allows specifying where the folder should be created, and the name of the project folder can be specified with the `project_name` argument.
 
In the [examples](https://github.com/ludmillafigueiredo/computational_notebooks/tree/master/examples) folder, you can find examples of how the notebooks can be used.

## Where to go next
This starter-kit is an attempt to have the simplest, yet effective, reproducible 
workflow for people unfamiliar with the computational practices involved in it.

Once users are comfortable with this set up, they are encouraged to try more complex packages and/or practices, e.g.:

- [workflowr](https://jdblischak.github.io/workflowr/)
+ [template](https://github.com/Pakillo/template)
- [rticles](https://github.com/rstudio/rticles)
- Organizing your code as an R package: [Hanß & Baldauf tutorial](https://selinazitrone.github.io/YoMos2020/index.html) 

# Acknowledgements

![workflow](https://raw.githubusercontent.com/ludmillafigueiredo/computational_notebooks/master/figures/fw_sponsorship.png)
