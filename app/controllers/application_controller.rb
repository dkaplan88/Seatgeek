require 'balanced'

class ApplicationController < ActionController::Base
  protect_from_forgery
  def balanced
    # # @balanced =  JSON.parse(open("https://api.balancedpayments.com/v1/api_keys").read)
    # 

  end
end
