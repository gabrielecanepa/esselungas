# Esselunga

This is an app to find out which Esselunga supermarkets are open and the products currently available 🧻

![](./app/assets/images/screenshot.png)

## Setup

```sh
# 1. Clone and go to the repo
git clone git@github.com:gabrielecanepa/esselunga ~/code/$GITHUB_USERNAME
cd ~/code/$GITHUB_USERNAME/esselunga
touch .env # create a private env file
echo ".env" >> .gitignore # and make git ignore it

# 2. Install gems and packages
bundle
yarn

# 3. Create db and fake records
rails db:create db:migrate db:seeds
```

## Run

In order to upload and get images, you need to provide a [Cloudinary](https://cloudinary.com/users/register/free) url . Copy it from your account, and paste it in your `.env` file.

![](./app/assets/images/cloudinary.png)

```sh
# Inside your .env file
CLOUDINARY_URL=cloudinary://xxxxxxxx:xxxxxx@gabriele-canepa93
```

Start a new server and go to http://localhost:3000:

```sh
rails s
```

Every time there's something new, you can pull new changes and update your local version:

```sh
git pull -f origin master

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
git pull -f origin master
git status # MUST be clean!

# 2. Create and switch to a new branch
git checkout -b awesome-feature

# 3. Open with sublime, add your changes, and commit
stt
git add .
git commit -m "An awesome feature"

# 4. Push your feature
git push -f origin awesome-feature
# If you get an error is because you are not a contributor yet. Ask to share your screen and create a feature during a livecode session!
# Then open github and create a new pull request there:
hub browse

# 5. When the pr gets merged, go back to master, delete the branch and get the latest changes
git checkout master
git branch -D awesome-feature && git sweep
git pull -f origin master
```

## Deployment

You must be a collaborator on [Heroku](https://signup.heroku.com) to be able to deploy. If you are (and just if you contributed to a livecode!), you can deploy new commits with:

```sh
git push -f heroku master
```

If not already done by someone else, push your Cloudinary url to Heroku with:

```sh
# TODO: use your actual cloudinary url
heroku config:set CLOUDINARY_URL="cloudinary://xxxxxxxx:xxxxxx@gabriele-canepa93"
```
