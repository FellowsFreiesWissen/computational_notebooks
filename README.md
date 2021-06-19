# Computational notebooks to increase productivity and reproducibility

## A minimal set up to get you started: How to use it
This repository contains a minimal starter-kit to use computational notebooks as
accompanying pieces for your manuscript and make your analysis reproducible.

In Figueiredo et al. (in prep), we detail and exemplify its use, but for now, here is who it works: 

In the [kits](https://github.com/ludmillafigueiredo/computational_notebooks/tree/master/kits) 
folder, you can find a `set_kit` function (in both `R` and `Julia` languages).

By calling this function (`set_kit()`) inside the folder you want to save your project at, you create:

+ a computational notebook (an `RMarkdown` or `Pluto` file) with a skeleton on how to organize your computational work
![workflow](https://raw.githubusercontent.com/ludmillafigueiredo/computational_notebooks/master/figures/workflow.png)

+ a file structure for easy access and less wordy code
![file-structure](https://raw.githubusercontent.com/ludmillafigueiredo/computational_notebooks/master/figures/file_structure.png)

In the [examples](https://github.com/ludmillafigueiredo/computational_notebooks/tree/master/examples) folder, you can find mini workout examples of how the notebooks can be used.

## Where to go next
This starter-kit is an attempt to have the simplest, yet effective, reproducible workflow.
It is simple because it does not introduce new functionality (you need one single function 
to set it up, but not to use it), and it is effective because of its simplicity, which makes it easy to use.

Once users are comfortable with this set up, they are encouraged to try more complex packages and practices, e.g.:

- [workflowr](https://jdblischak.github.io/workflowr/)
+ [template](https://github.com/Pakillo/template)
- [rticles](https://github.com/rstudio/rticles)
- Tutorial on how to organize your code as an R package: [Hanß & Baldauf tutorial](https://selinazitrone.github.io/YoMos2020/index.html) 

# Acknowledgements

![workflow](https://raw.githubusercontent.com/ludmillafigueiredo/computational_notebooks/master/figures/fw_sponsorship.png)
