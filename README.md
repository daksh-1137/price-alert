# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Steps - 

docker-compose up

About this rails app - 

I have set up simple user authentication using devise gem so that each user can set their own alerts in the app ,
I have given Alert model 4 columns - user_id,cryptocurrency,status,target_price
I have made a separate module in helpers directory called crypto_price_alert.rb that will have all the methods related to CryptoPrice and also made a service in services directory but unfortunately couldnt use it in sidekiq
I have installed sidekiq gem to schedule cron job for background processing and the cron job would hit in every 1 minute to check for the price of the cryptocurrency
I have also set up smtp for sending mails , Its working for me but I am removing my app-key from config/development.rb because of privacy 
In jobs directory i have written a sidekiq cron job that would run at scheduled time.
I have also addedd pagination in index page of alerts app 
I had some doubt while adding redis cache , ruby version was not compatible somehow.
I couldnt use websocket as well because of some bundler error , I did resolve it in the end but anyways ended up using given API.


