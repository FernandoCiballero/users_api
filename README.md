# Extremely basic API made in Ruby on Rails

_Designed to test the basic functionalities of an API_

## Basic use 🚀

This API can be tested using tools such as [Postman](https://www.postman.com/), but if you prefer to do so than in a simpler way, you can use the ```curl``` command as follows:

```
# GET /users
curl -v "http://localhost:3000/api/v1/users"

# GET /users/:id
curl -v "http://localhost:3000/api/v1/users/2"

# POST /users
2 options to do the same:

curl -d '{"name":"John Doe","email":"johndoe@email.com"}' -H 'Content-Type: application/json' http://localhost:3000/api/v1/users

curl -X POST --data "user[name]=John Doe" --data "user[email]=johndoe@email.com" http://localhost:3000/api/v1/users


# PUT /users/:id

 curl -d '{"name":"Bruce Willis"}' -H 'Content-Type: application/json' -X PUT http://localhost:3000/api/v1/users/27

# DELETE /users/:id

curl -X DELETE http://localhost:3000/api/v1/users/27

```

### Gems added 📋

_These are the gems added to the project_

*[Faker](https://github.com/faker-ruby/faker) 
*[Fast Jsonapi](https://github.com/Netflix/fast_jsonapi)

