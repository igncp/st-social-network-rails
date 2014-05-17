# Communirb

This is a standard site (st) that shows a way to build a social network in Ruby on Rails. It was made with learning purposes, and encourages anyone who wants to contribute. It has been developed with Rails 4 and Ruby 2.0

## Installation

To try it in your computer (with Ruby and Rails already installed), after you clone or download the repository, you need to do the following:

- Run `bundle install`.
- Run `rake bower:install` to download the front-end dependencies.
- Create your database. This site uses MySQL but you can use whichever type you prefer. Just config the database in `/config/database.yml`. You can also user the `/sensitive.sample.sh` file to set up the environment variables fast. Change the name of the file (optional) to `sensitive.sh`, write your user and password, and run `source sensitive.sh`.
- Run the migrations: `rake db:migrate`. I also recommend to seed the database, so you can see the site in action. Run `rake db:seed`. The seed provides you a dummy user with email **a@a**.a and password **12345678**.
- That's all, just run the server `rails s` and you're free to play around.


## License

MIT License Copyright © 2014 Ignacio Carbajo - @igncp