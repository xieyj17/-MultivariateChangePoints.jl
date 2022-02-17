using MvChangePointDetection
using Documenter

DocMeta.setdocmeta!(MvChangePointDetection, :DocTestSetup, :(using MvChangePointDetection); recursive=true)

makedocs(;
    modules=[MvChangePointDetection],
    authors="Yijun Xie",
    repo="https://github.com/xieyj17/MvChangePointDetection.jl/blob/{commit}{path}#{line}",
    sitename="MvChangePointDetection.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://xieyj17.github.io/MvChangePointDetection.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/xieyj17/MvChangePointDetection.jl",
    devbranch="main",
)
