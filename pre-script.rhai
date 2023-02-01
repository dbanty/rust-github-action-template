file::delete("README.md");
file::rename("README-TEMPLATE.md", "README.md");

if !variable::is_set("project-name") {
  let project_name = variable::prompt("project-name", "Project Name (kebab-case)?");
    variable::set("project-name", project_name);
}
if !variable::is_set("github_repo") {
    let repo = variable::prompt("GitHub repo name for this action?", variable::get("project-name"));
    variable::set("github_repo", repo);
}