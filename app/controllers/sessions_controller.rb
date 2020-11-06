class SessionsController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @admin = Admin.find_by(user: params[:user])
    if @admin && @admin.authenticate(params[:password])
       session[:admin_id] = @admin.id
       redirect_to '/welcome', success: "You have singed in successfully!"
    else
      redirect_to '/login', danger: "Invalid username or password"
    end
 end

<<<<<<< HEAD
=======
  def login
  end

>>>>>>> b22034afac8950255d439fb4fb96f62d8715ca43
  def welcome
  end

  def destroy      
   session[:admin_id] = nil     
   redirect_to '/welcome' 
 end  

  def page_requires_login
  end
end
