# Codaisseurify

Website i made during the 9 weeks course of Codaisseur.

The assignment was to make an Spotify like website on wich you can add and delete songs and artists through ajax

![](https://github.com/Opaismoe/codaisseurify/blob/master/app/assets/images/screenshot-1.png?raw=true)
![](https://github.com/Opaismoe/codaisseurify/blob/master/app/assets/images/screenshot-2.png?raw=true)

## Steps

These are the steps I followed when working on this app:

1. Setting up project
2. Adding Bootstrap, jquery, devise, rspec,
3. Setting up the database
4. Setting up the models, and controllers.
5. Adding views
6. Add song feature
7. Delete song feature
8. Delete all songs feature

## Database Structure

1. Artists

  * name:string
  * genre:string

2. Songs

  * name:string
  * artist_id:bigint

3. Photos

  * artist_id:bigint
  * image:string

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org/en/) and [Bundler](http://bundler.io/) installed.

```bash
git clone git@github.com:Opaismoe/codaisseurify.git
cd Codaisseurup
bundle install
rails db:create db:migrate db:seed
rails server
```
