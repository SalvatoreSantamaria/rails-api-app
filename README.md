# README
This application can be run from local with rails s. It uses a Postgresql Database. Check the database.yml file for the (standard) database name/username.

This application is a mock URL shortener in which URL's are added and a unique short.ly fake address is returned in the form of "short.ly/#{number}". The URL and fake address will "expire" in 24 hours.

# Routes
  POST /api/v1/url/shortener
  GET /api/v1/url/index
  GET /api/v1/url/lengthener

# JSON format excepted: POST /api/v1/url/shortener
  Autoexpiration parameter is set to 'autoexpire' in 24 hours.
  {
    "address":"http://www.test789.com",
  }

# JSON format expected: GET /api/v1/url/lengthener
  Only the shortened URL is needed:
  {
      "shortened":"short.ly/18"
  }

# JSON format excepted: GET /api/v1/url/index
  No params are needed here, the index will return all addresses and their data

