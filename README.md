# README
This application can be run from local with rails s. It uses a Postgresql Database. Check the database.yml file for the (standard) database name/username.

This application is a mock URL shortener in which URL's are added and a unique short.ly fake address is returned in the form of "short.ly/#{number}". The URL shortener can take in an optional expiration date, otherwise, the URL and fake address will "expire" in 24 hours.

# Routes
  POST http://localhost:3000/api/v1/url/shortener
  GET http://localhost:3000/api/v1/url/index
  GET http://localhost:3000/api/v1/url/lengthener

# JSON format excepted: POST http://localhost:3000/api/v1/url/shortener
  Expiration parameter is optional and does not need to be included. The expirational parameter will set a future date where the URL would expire. Otherwise, the autoexpiration parameter is set to autoexpire in 24 hours.
  {
    "address":"www.test789.com",
    "expiration": "2020-11-27" 
  }

# JSON format expected: GET http://localhost:3000/api/v1/url/lengthener
  Only the shortened URL is needed:
  {
      "shortened":"short.ly/18"
  }

# JSON format excepted: GET http://localhost:3000/api/v1/url/index
  No params are needed here, the index will return all addresses and their data

