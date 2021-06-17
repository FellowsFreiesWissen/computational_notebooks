function set_kit!(project_name = "project", project_path = pwd())
    ## Create project in path
    cd(project_path)
    ## Create file structure
    ### first level
    mkdir(project_name)
    #### TODO: add README per folder
    ### main folders of a project
    map(mkdir, map(x -> joinpath(project_name, x),
                   ["results","text", "submission"]))
    ### main folders of results
    map(mkdir, map(x -> joinpath(joinpath(project_name,"results"), x),
                   ["raw_data","clean_data", "scripts", "semi_products"]))
    ### main folders of text
    map(mkdir, map(x -> joinpath(joinpath(project_name,"text"), x),
                   ["figures","tables", "supplementary"]))

    ## Create the README file
    touch(joinpath(project_name, "README.md"))
    ## TODO: add basic description?
    ## Create the minimal notebook
    touch(joinpath(project_name, "notebook.jl"))
    open(joinpath(project_name, "notebook.jl"), "w") do io
        write(io, "### A Pluto.jl notebook ###")
        write(io, "\n\n")
        write(io, "using Markdown")
        write(io, "\n")
        write(io, "using InteractiveUtils")
        write(io, "\n\n")
        write(io, "# ╔═╡ 307335ba-cf46-11eb-28b0-f199cf048ae6")
        write(io, "\n")
        write(io, "md\" ## Your title here\"")
        write(io, "\n\n")
        write(io, "# ╔═╡ 37c7bffc-cf46-11eb-19b8-4175e38e818b")
        write(io, "\n")      
        write(io, "## Paths for easy call from the Pluto notebook")
        write(io, "\n")
        write(io, "begin")
        write(io, "\n")
        write(io, "\tdata_dir = joinpath(\"results\", \"clean_data\") ## do NOT play with stuff in raw_data. That is your back-up")
        write(io, "\n")
        write(io, "\tscripts_dir = joinpath(\"results\", \"scripts\")")
        write(io, "\n")
        write(io, "\tsuppl_dir = joinpath(\"results\", \"supplementary\")")
        write(io, "\n")
        write(io, "\tsemiprods_dir = joinpath(\"results\", \"semi_products\")")
        write(io, "\n")
        write(io, "\tfigures_dir = joinpath(\"text\", \"figures\")")
        write(io, "\n")
        write(io, "\ttables_dir = joinpath(\"text\", \"tables\")")
        write(io, "\n")
        write(io, "end")
        write(io, "\n\n\n")
        write(io, "# ╔═╡ Cell order:")
        write(io, "\n")
        write(io, "# ╠═307335ba-cf46-11eb-28b0-f199cf048ae6")
        write(io, "\n")
        write(io, "# ╠═37c7bffc-cf46-11eb-19b8-4175e38e818b")
    end
end
