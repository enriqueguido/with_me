class EventbriteApiController < ApplicationController

  def index
    @url = "https://www.eventbriteapi.com/v3/events/search?token=SM4RJIL6AMM75DCOVOFM"
    @response = HTTParty.get @url
    @response
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def show
  end

end
