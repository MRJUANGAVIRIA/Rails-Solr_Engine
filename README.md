# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
  1. Ruby 2.5.8

* System dependencies
  1. Rails 5.2.4
  2. Postgres 12.3

* Configuration
  ```bash
  $ bundle install
  ```

* Database creation
  ```bash
  $ rails db:setup
  $ rails db:seed
  ```

* Solr initilization
   ```bash
  $ bundle exec rake sunspot:solr:start
  $ bundle exec rake sunspot:solr:reindex
  ```
* How to run the test suite
  ```bash
  $ bundle exec rake sunspot:solr:start RAILS_ENV=test
  $ bundle exec rspec
  ```

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
