# user-svc
The Go service for user authentication and CRUD operations. Signed JWT Token generation. Services can validate the JWT using the public key associated to this service. 

This service must not be publicly exposed

## User API

### GET User (google authentication)
The method requires a google authentication token and returns a JWT for authentication with user information.

Returns:
- 200 OK if the google authentication token is valid and the associated user already exists. Returns the authentication signed JWT to be used as authentication cookie with the user data
- 404 Not Found if the user does not exist
- 400 Bad Request if the token is not valid

### PUT User (google authentication)
Same functionality as GET User but it updates the user data if the data from the token is different from the data in the DB.

Returns:
- 200 OK if the google authentication token is valid and the associated user already exists. Returns the authentication signed JWT to be used as authentication cookie with the user data
- 404 Not Found if the user does not exist
- 400 Bad Request if the token is not valid
  
### POST User (google authentication)
The method requires a google authentication token and:
- verifies the token
- creates the user
  
Returns:
- 201 Created + JWT token 

## Database


## JWT format
