# WDI-025 Capstone - Full Stack Project Back End

---
### Planning

I planned this project with the intention of connecting to a third party API to search through an established database for existing brews.  I created ERDs (see below) to help me visualize my database structure.  I decided to run the Back End in Ruby with postgres because I wanted a relational database.  I planned to work through this project in the following way

- Generate Rails app
- Scaffold Ratings resource
- Add relationship to User (one to many)
- Test endpoints with Curl scripts
- Add more resources
- Update protections as needed so Front End would get the right data

with the reach goals (see future fixes)

- Integrate a third party API or seed my own database for users to search through
- Integrate with my own API for home brew recipes to rate if you've tried them
  as well

---
### Development

I started by generating a Rails app and then scaffolding a Ratings resource.  I added a one to many relationship with the user, as I wanted a user to own many ratings and each rating to be unique to a user.  I used Curl scripts to test all my routes endpoints.  I added protections in so only the current user could change a rating (in an Open Read Controller).  I then scaffolded a second resource of Brews, so users could add any brew they wanted to the database.  I added back end authentication to check if a brew was already created, so we wouldn't be adding duplicates to the resource.  I used some Front End magic to add info from the Brews resource to the Ratings resource with a rating added by the user.

---
### Future Fixes

- Integrate with a third party API or seed a Database so users will only have
  to search and rate
  - Shoutout to [Open Beer Database](http://openbeerdb.com/) for leaving their
    old database dump available while they are upgrading (as soon as I learn
    MySQL I will be seeding my database until I get a third party key)
- Integrate with my own [API](https://github.com/reganbp/wort-api) to rate home brew recipes

---
### Technologies

- Ruby
- Ruby on Rails
- SQL
- postgreSQL

---
### Routes

```ruby
# RESTful routes
resources :users, only: %i[index show update]
resources :ratings, except: %i[new edit]
resources :brews, except: %i[new edit destroy update]

# Custom routes
post '/sign-up' => 'users#signup'
post '/sign-in' => 'users#signin'
delete '/sign-out' => 'users#signout'
patch '/change-password' => 'users#changepw'
```

---
### Links

- [ERD](https://imgur.com/GGHJeKh)
- [Front End Repo](https://github.com/reganbp/ratr-client)
- [Front End Deployed](https://reganbp.github.io/ratr-client/)
- [Back End Deployed](https://floating-temple-84056.herokuapp.com/)

---
Feel free to fork, clone, and install dependencies (bundle install) to have your own copy


Thanks to General Assembly and all their support!
