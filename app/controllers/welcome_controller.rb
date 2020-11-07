class WelcomeController < ApplicationController
  def new
  end

  def create
    puts "#{params}"
    account_sid = 'ACa7cc1b6012166c85ee7e06b9dcb4a616' 
    auth_token = '76816cb9bc230638cf48095420491300' 
    @client = Twilio::REST::Client.new(account_sid, auth_token) 
    message = 
      if params[:message] && params[:message][:whatsapp] == "1"
        @client.messages.create( 
                                   body: "#{params[:message][:msg]}", 
                                   from: 'whatsapp:+14155238886',       
                                   to: 'whatsapp:+917746857774' 
                                 ) 
      else
       @client.messages.create( 
                                   body: "#{params[:message][:msg]}", 
                                   from: '+12052936261',       
                                   to: '+917746857774' 
                                 ) 
      end
    render js: %(window.location.href='#{root_path}')
  end
end

