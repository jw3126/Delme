using Pkg
Pkg.add("GitHub")
@show ENV["github_pull_request_number"]
@show ENV["github_repository"]
@show ENV["github_repository_owner"]
