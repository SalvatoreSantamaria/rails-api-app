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