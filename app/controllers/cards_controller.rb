class CardsController < ApplicationController
  respond_to :html, :json

  def index
    @seatgeek = SeatGeek::Connection.events(:type => "mlb", :per_page => 1000)
  end

end


    # key = Balanced::ApiKey.new.save
    # Balanced.configure(key.secret)
    # Balanced::Marketplace.new.save
    # @balanced