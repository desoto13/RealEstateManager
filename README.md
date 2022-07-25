# Real Estate Manager

## Versions
below are the versions used to create this app
- ruby 3.0.0p0 (2020-12-25 revision 95aff21468)
- Rails 6.1.6.1
- node v12.18.3
- yarn 1.22.4
- database: postgres (PostgreSQL) 14.2

## Getting Started

Clone the repo:
```sh
git clone git@github.com:desoto13/RealEstateManager.git
```

Run the bundler
```sh
bundle install
```

Assuming the postgresql has already been setup with the app, intiate the database
```sh
pg_ctl start
rails db:create
```
Run the migrations
```sh
rails db:migrate
```

## Running the app
This app utilizes the devise gem for user management. Sample data has already been seeded for testing purposes.
```sh
rails db:seed
```
Run the server
```sh
rails s
```

There are 2 accounts already created and 6 real estate already listed when you run the seed. Below are the account credentials
- email: jdelacruz@email.com
  password: 123456
- email: ppenduko@email.com
  password: 123456

The letter_opener gem has been used for this app to check if the email has been sent. To access the email you just need to include `/letter_opener` in your url. For example if you are on `localhost:3000`, the url would be `localhost:3000/letter_opener`
