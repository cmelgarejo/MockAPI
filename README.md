# MockAPI

This is a simple Ruby app using the Rails 5 framework, a simple API   


### TL;DR
```
~$ rails db:create
~$ rails db:migrate
~$ rails db:migrate RAILS_ENV=test
~$ rails db:seed
~$ rails s
```

## Run tests

```
~$ rails test
~$ bundle exec rspec
```

## Deploying to Heroku
```
~$ heroku login

~$ git push heroku master
~$ heroku run rake db:migrate
~$ heroku run rake db:seed
```

And open [https://your-app.herokuapp.com](https://<your-app>.herokuapp.com)