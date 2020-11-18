class Api::V1::UrlController < ApplicationController

  def shortener
    render json: 'Hello!'
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

  end
end

#http://localhost:3000/api/v1/url/change/