# Back-end of the flags application
To simplify development, the back-end is a spring-boot application that was generated with jHipster.tech tools.

Full documentation and information is available on the website at https://www.jhipster.tech/

## Swagger-ui URL
http://localhost:8080/swagger-ui.htm

## jHipster Schema Definition
The jHipster Studio generates schemas that can be imported to the project.  'continents-jdl.jh' is the one being used.

The schema diagram:
![alt text][logo]

[logo]: ./continents-jdl.png

## H2 DB Console URL
http://localhost:8080/h2-console

To dump the current schema use the following in the h2-console: 
```h2
SCRIPT NODATA NOPASSWORDS NOSETTINGS TO 'back-end-schema.sql' TABLE CONTINENT , COUNTRY;
```

## Generate a JWT token to use the API
Currently all of the api requests to the back-end require a JWT took.

Navigate to the JWT-Controller on the Swagger UI page. Or use the following curl command to get the jwt-token for the **user**.

```shell
  curl -X POST "http://localhost:8080/api/authenticate" -H  "accept: */*" -H  "Content-Type: application/json" -d "{  \"password\": \"user\",  \"rememberMe\": true,  \"username\": \"user\"}"
```
Then include the jwt-token on the authorization Bearer header.  For example:
```shell 
curl -X GET "http://localhost:8080/api/continents" -H  "accept: */*" -H  "Content-Type: application/json" \
 -H "authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyIiwiYXV0aCI6IlJPTEVfVVNFUiIsImV4cCI6MTU3Nzg4MzMwOH0.kMnslwY_2AZ6hlV5BkNKf58Sl7qfAkQLuFRaEKwYMC2KCqdS_ncjmLkGc52rNpT613rGgOzGtoExfvvr0uX3Ig" 

```
And to get the countries:
```shell script
curl -X GET "http://localhost:8080/api/countries" -H  "accept: */*" -H  "Content-Type: application/json" \
 -H "authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ1c2VyIiwiYXV0aCI6IlJPTEVfVVNFUiIsImV4cCI6MTU3Nzg4MzMwOH0.kMnslwY_2AZ6hlV5BkNKf58Sl7qfAkQLuFRaEKwYMC2KCqdS_ncjmLkGc52rNpT613rGgOzGtoExfvvr0uX3Ig" 

```
