class UserController < ApplicationController
    
        def login
                session[:login] = 1
                session[:cart] = nil
                flash[:notice] = "Admin Login sucessfull!!"
                redirect_to :controller => :jerseys
        end 
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "Bye, Come back soon! :)"
        redirect_to :controller => :jerseys
    end 
end
