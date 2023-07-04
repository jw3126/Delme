using Pkg
Pkg.add("GitHub")
import GitHub

GITHUB_TOKEN = ENV["GITHUB_TOKEN"]
pr_number = parse(Int, ENV["github_event_pull_request_number"])
repo = GitHub.Repo(ENV["github_repository"])
pr_author = ENV["github_event_pull_request_user_login"]
@show repo

auth = GitHub.authenticate(GITHUB_TOKEN)

issue = GitHub.create_issue(repo; params=Dict(
    "title"=>"DAT failure",
    "body"=>"#$pr_number broke DAT",
    ),
    auth
)

pr_comment = GitHub.create_comment(repo, pr_number; auth,
    params=Dict(
        "body"=>"@$pr_author this PR broke DAT. See #$(issue.number)",
    )
)
