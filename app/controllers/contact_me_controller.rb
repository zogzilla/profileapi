class ContactMeController < ApplicationController
    
    def send_email
        puts params
        email = ContactMe.forward_email(params[:name], params[:phone], params[:email], params[:message])
        email.deliver
        render :json => { :status => "ok" }
    end
end
