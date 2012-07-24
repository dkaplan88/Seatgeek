require 'balanced'

class CardsController < ApplicationController
  respond_to :html, :json

  def index
    @ip = request.ip

    @city = request.location.city
    @city.blank? ? @city = 'Chicago' : @city
    
    @state = request.location.state
    @state.blank? ? @state = 'IL' : @state
    
    @seatgeek = SeatGeek::Connection.events(:per_page => 100, :q => "#{@city}, #{@state}")
    @v = SeatGeek::Connection.venues(:city => "Chicago")
    

    # key = Balanced::ApiKey.new.save
    # Balanced.configure(key.secret)
    # Balanced::Marketplace.new.save
    # 
    # puts key.secret
    # 
    # @card = Balanced::Card.new(
    #   :card_number => "5105105105105100",
    #   :expiration_month => "12",
    #   :expiration_year => "2015",
    # ).save
    # 
    # Card.new = @card
  end

end


    # key = Balanced::ApiKey.new.save
    # Balanced.configure(key.secret)
    # Balanced::Marketplace.new.save
    # @balanced