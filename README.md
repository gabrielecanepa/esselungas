# Esselunga

This is an app to find out which Esselunga supermarkets are open and the products they have currently available 🧻

## Setup

```sh
# 1. Clone and go to the repo
git clone git@github.com:gabrielecanepa/esselunga ~/code/$GITHUB_USERNAME
cd ~/code/$GITHUB_USERNAME/esselunga

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
git pull origin master

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
# 1. Always pull the latest version and make sure your master branch is clean
git pull origin master
git status # MUST be clean!

# 2. Create and switch to a new branch
git checkout -b awesome-feature

# 3. Open with sublime, add your changes, and commit
stt
git add .
git commit -m "An awesome feature"

# 4. Push your feature, then open github and create a pull request there
git push origin awesome-feature # if you get an error is because you are not a contributor yet!
hub browse

# 5. When the pr gets merged, go back to master, delete the branch and get the latest changes
git checkout master
git branch -D awesome-feature && git sweep
git pull origin master
```
