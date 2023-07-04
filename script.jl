using Pkg
Pkg.add("GitHub")
import GitHub

GITHUB_TOKEN = ENV["GITHUB_TOKEN"]
@show ENV["github_pull_request_number"]
repo = GitHub.Repo(ENV["github_repository"])
@show repo

auth = GitHub.authenticate(GITHUB_TOKEN)

res_create_issue = GitHub.create_issue(repo; params=Dict(
    "title"=>"hello",
    "body"=>"world",
    ),
    auth
)

res_comment = GitHub.create_comment(repo, res_create_issue.number; auth,
    params=Dict(
        "body"=>"hello",
    )
)
