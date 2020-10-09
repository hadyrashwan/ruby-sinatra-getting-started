# ruby-sinatra-getting-started
Try out ruby sinatra with sqlite3.

## Setup
- Make sure you have `ruby` installed.
- clone the project and run `cd ruby-sinatra-getting-started/`.
- Install the packges using `bundle install`.
- Run the app using `bundle exec ruby server.rb`.

## APIs
- Get all the todo items using `GET /todo`.
- Add a new item using `POST /todo`.
- Update an item using `PUT /todo`.
- Delete an item using `DELETE /todo`.

## Todo Model

| property         | Type         
| ------------- |:-------------:|
| id     |  Serial |
| title      | String|
| text      | String|
| done | Boolean |

## Deploy on GCP
- Change the app to use mysql [gem](https://rubygems.org/gems/dm-mysql-adapter/versions/1.2.0) instead.
- Follow the same approach to the ruby-on-rails [guide](https://github.com/hadyrashwan/ruby-on-rails-getting-started#deployment-on-gcp-as-serverless-).
