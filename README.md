# Esselunga

This is an app to find if supermarkets are currently open and the products they have available.

## Setup

```sh
# 1. Clone and go to the repo
git clone git@github.com:gabrielecanepa/esselungas ~/code/$GITHUB_USERNAME
cd ~/code/$GITHUB_USERNAME/esselungas
# 2. Install gems and packages
bundle
yarn
# 3. Create db and fake records
rails db:migrate db:seeds
```

## Run

Start a new server and go to http://localhost:3000:

```sh
rails s
```

You can pull new changes and update your local version with:

```sh
git pull origin master # get the latest changes

# Are there new gems?
bundle
# New js packages?
yarn
# New migrations/seeds?
rails db:migrate db:seed
```

## Development

To develop and propose new changes:

```sh
# 1. Create and switch to a new branch
git checkout -b new-feature
# 2. Open sublime and add your changes
stt
# 3. Create your commit and push to your branch
git add .
git commit -m "An awesome feature"
git push origin new-feature
# 4. Open github and create the pull request there
hub browse
# 5. When the pr gets merged, go back to master, delete the branch and get the latest changes
git checkout master
git branch -D new-feature && git sweep
git pull origin master
```
