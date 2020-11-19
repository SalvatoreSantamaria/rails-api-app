class Api::V1::UrlController < ApplicationController

  #ONLY USING FOR TEST PURPOSES:
  skip_before_action :verify_authenticity_token
  
  #need to 
  # give ability to api to take in input. can currently hit route and get back json data.
  # make new method to get original input back
  # use database instead of obj

  def shortener
    @count = 0
    @dataBase = {}
    url = 'www.test.com'

    front = "http://shorturl"
    @count = @count + 1
    count = @count
    @dataBase[url] = (front.concat(count.to_s))


    #render json: 'Hello!'
    render json: @dataBase

  end
end


  #   class UrlProcess
  #     def initialize 
  #         @count = 0
  #         @dataBase = {}
  #     end
      
  #     def shortener(url)
  #         front = "http://shorturl"
  #         @count = @count + 1
  #         count = @count
  #         @dataBase[url] = (front.concat(count.to_s))
  #         #puts(front.concat(count.to_s))
  #         #puts @dataBase
  #     end
      
  #     def lengthener(url)
  #         return @dataBase.key(url)
  #     end
      
      
  # end
  
  # url = UrlProcess.new
  # url.shortener('www.longurlsentence.com')
  # puts(url.shortener('www.superextralongurl.com'))
  # puts(url.lengthener('http://shorturl2'))




#http://localhost:3000/api/v1/url/change/


/*
Objectives:
---------------
- Take your time. The goal is not to finish, but to demonstrate your approach to the problem.  Please "think out loud".
- Drive the implementation with tests.  Be sure to think through edge cases and boundary conditions.
- Don't be afraid to start small.
- Keep an eye on maintainability.
- Explain any tradeoffs you make in your implementation.


- Work through each step, in order, one at a time
- Feel free to use the Internet (google, stackoverflow, etc.) as necessary.
- Expectations use the Chai Assertion Library (https://www.chaijs.com/api/bdd/)
- This is a NODE environment, (not Browser)


Exercise Description:
---------------------
Create a URL shortening service (Product Marketing has named it "later.ly") that allows the user to specify when a shortened URL will be active.
For example, I have a cute kitten website with a special offer that I want to link to, but the shortened link for it shouldn't work until a specified date.


Step 1:
-------
Given a url (eg: "http://cutekittens.com/specialoffer") get back a shortened url (eg: "http://later.ly/<uniquecharacterorcharacters>").

Step 2:
-------
Given a shortened url, get back the original url

Step 3:
-------
When shortening a URL, specify a *required* date for when the shortened url will be active.

Step 4:
-------
When shortening a URL, specify an *optional* date for the shortened url to expire.

Step 5:
-------
When retrieving a shortened URL, do not return if it's before the active date or after the expired date
*/

// Configuration
var Mocha = require('mocha');
var expect = require('chai').expect;
var mocha = new Mocha({ui: 'bdd'});
mocha.suite.emit('pre-require', this, 'solution', mocha);


// Implementation

class UrlShortener {
  constructor() {
  }
  
  mockDB = {};
  
  shorten(url) {
    console.log('hi')
    let laterly = "http://later.ly/"
    return (laterly + 0)
    console.log('oops')

    //key values
    //key og : laterly + 0
    // store
    
    // 
    
  }
}


// Tests
describe('UrlShortener', () => {
  it(".shorten()", () => {
    var shortener = new UrlShortener()
    expect(shortener.shorten('http://somereallylongurl.com')).to.equal('http://later.ly/0');
  });
});






// Run tests
mocha.run(function() {});