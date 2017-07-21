# Parks API

### Endpoints
All endpoints are preceeded by `http://localhost:3000/`
  1. `parks` returns all parks
  2. `parks/1` returns an individual park. In this case it is the park with and id of 1.
  3. `parks/5/facilities` returns all facilities associated with a specific park. In this case the park with an id of 5.
  4. `parks/23/facilities/76` returns an individual facility by id. In this case the facility with and id of 76 associated with the park with the id 1. The facility ids must coordinate with the park they're associated with.
