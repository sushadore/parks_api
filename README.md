# Parks API

An API for National and State Parks and National Monuments and associated facilities.

## Endpoints
All endpoints are preceeded by `http://localhost:3000/`
  1. `parks` returns all parks
  2. `parks/1` returns an individual park. In this case it is the park with and id of 1.
  3. `parks/5/facilities` returns all facilities associated with a specific park. In this case the park with an id of 5.
  4. `parks/23/facilities/76` returns an individual facility by id. In this case the facility with and id of 76 associated with the park with the id 1. The facility ids must coordinate with the park they're associated with.Â

## Requirements
  * Ruby
  * Rails
  * Active Record
  * Postgres

## Setup
  *`git clone https://github.com/sushadore/parks_api.git`
  * `cd parks_api`
  * `rails db:setup`
  * `rails s`
  * open api in browser or view in Postman

## Technologies
Ruby on Rails, Active Record, Postgres

By Susha Dore MIT License
