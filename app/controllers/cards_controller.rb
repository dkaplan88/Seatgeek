class CardsController < ApplicationController
  respond_to :html, :json

  def index
    @seatgeek = SeatGeek::Connection.events(:type => "mlb", :per_page => 1000)
  end

end

  # @api = JSON.parse(open("https://api.balancedpayments.com/v1/api_keys/ec68ebf6c9ed11e1b502026ba7e239a9").read)
 # Balanced.configure("ec68ebf6c9ed11e1b502026ba7e239a9") 
    # key = Balanced::ApiKey.new.save
    # Balanced.configure(key.secret)
    # Balanced::Marketplace.new.save
    # @balanced