# Trad'Food
[![Code Climate](https://codeclimate.com/github/bastienrobert/TradFood/badges/gpa.svg)](https://codeclimate.com/github/bastienrobert/TradFood)

## What's Trad'Food
Trad'Food is a student project, made @ IUT Bordeaux Montaigne, and developed with <3 by Bastien Robert.

## Routes
| URL               	| PATH                  	|
|-------------------	|-----------------------	|
| /                 	| root application#home 	|
| /admin            	| rails_admin#dashboard 	|
| /about            	| application#about     	|
| /cities           	| cities#index          	|
| /:name            	| cities#show           	|
| /:city_name/:name 	| recipes#show          	|

## How to deploy (dev)
Using sqlite3 as DBMS in development & test env, and PGSQL in production.
Using Puma as server.

```
git clone https://github.com/bastienrobert/TradFood.git
cd TradFood
cp config/local_env.example.yml config/local_env.yml
nano config/local_env.yml
```
Then enter your credentials to connect to the administrator panel
```
rake db:create
rake db:migrate
rails s
```
open http://localhost:3000/ on a web browser

## Deploy on Dokku
Ready to be deploy on Dokku (4.0+).
Need to have a ready-to-deploy Dokku env, with PostgreSQL and Nginx installed.

```
# Install Dokku PSQL plugin
$ dokku plugin:install https://github.com/Flink/dokku-psql-single-container.git
# Create your Dokku app and PSQL container
$ dokku apps:create tradfood
$ dokku psql:create tradfood
$ dokku psql:link tradfood tradfood
# Add to your dev repo'clone
git remote add dokku dokku@YOUR-SERVER-IP:YOUR-RAILS-APP-NAME
git push dokku master
```
