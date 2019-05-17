workflow "Deploy to GitHub Pages" {
  on = "push"
  resolves = ["Deploy to gh-pages"]
}

action "master branch only" {
  uses = "actions/bin/filter@master"
  args = "branch master"
}

action "Deploy to gh-pages" {
  uses = "JamesIves/github-pages-deploy-action@master"
  env = {
    BRANCH = "gh-pages"
    BUILD_SCRIPT = "npm install && npm run build"
    FOLDER = "build"
  }
  needs = ["master branch only"]
}
