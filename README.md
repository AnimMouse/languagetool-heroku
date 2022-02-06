# LanguageTool server on Heroku
Host your own [LanguageTool server](https://languagetool.org) on Heroku for free!

## Heroku Deployment
### Deploy by building it on Heroku's server
You need Heroku CLI

1. Clone this repo
2. Create an app on Heroku
3. Set git remote to Heroku `heroku git:remote -a your-app-name`
4. Set stack to container `heroku stack:set container -a your-app-name`
5. Deploy to Heroku `git push heroku main`

### Deploy by building it on your computer
You need Heroku CLI & Docker

1. Clone this repo
2. Create an app on Heroku
3. Build the image and push to Container Registry `heroku container:push web -a your-app-name`
4. Release the image `heroku container:release web`

## ngram support
The program will automatically download ngram while the app is running. (see languagetool.sh)
Depending on the download speed of Heroku & upload speed of LanguageTool's server, ngram will take a while until it is used.
As Heroku file system is ephemeral, once the app is restarted, the ngram will be deleted and will be downloaded again on next start.

Inspired by [silvio/docker-languagetool](https://github.com/silvio/docker-languagetool)