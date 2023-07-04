using Pkg
Pkg.add("GitHub")
@show ENV["PR_NUMBER"]
@show ENV["REPO_NAME"]
@show ENV["REPO_OWNER"]
