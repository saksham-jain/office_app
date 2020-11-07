class WelcomeController < ApplicationController
  def new
  end

  def create
    account_sid = 'ACa7cc1b6012166c85ee7e06b9dcb4a616' 
    auth_token = '76816cb9bc230638cf48095420491300' 
    @client = Twilio::REST::Client.new(account_sid, auth_token) 
     
    message = @client.messages.create( 
                                 body: 'hello', 
                                 from: '+12052936261',       
                                 to: '+917746857774' 
                               ) 
     
  render 'new'
  end
end

