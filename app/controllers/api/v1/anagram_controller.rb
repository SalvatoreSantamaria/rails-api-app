class Api::V1::AnagramController < ApplicationController
  def check
    word1 = "heart".split('').sort.join('')
    word2 = "earth".split('').sort.join('')
    @result = word1 == word2
    @hello = 'hello'
    render json: @result
  end
end
