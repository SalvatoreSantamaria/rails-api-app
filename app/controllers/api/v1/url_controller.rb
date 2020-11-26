class Api::V1::UrlController < ApplicationController
  wrap_parameters false
  @@count = 0

  def index
    urls = Url.order('created_at DESC')
    render json: {status: 'SUCCESS', data: urls}, status: :ok
  end

  def shortener
    count = @@count
    my_params = shorten_params
    @url = Url.new
    @url.attributes = my_params
    @url.shortened = "short.ly/#{count.to_s}"
    @url.autoexpiration = Time.new.advance(days: 1)
    @url.save
    @@count += 1

    if @url.save 
      render json: {status: 'SUCCESS', data: @url}, status: :ok
    else 
      render json: {status: 'ERROR', data: @url.errors}, status: :unprocessable_entity
    end
  end

  def lengthener
    url = Url.where(lengthen_params)
    if (!url[0].autoexpiration.future?)
      render json: {status: 'EXPIRED', data: url}, status: :ok
    else 
      render json: {status: 'SUCCESS', data: url}, status: :ok
    end
  end

  private

  def shorten_params
    params.require(:address)
    params.permit(:address)
  end

  def lengthen_params
    params.require(:shortened)
    params.permit(:shortened)
  end

end
