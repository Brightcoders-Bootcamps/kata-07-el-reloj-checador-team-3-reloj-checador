class AdminsController < ApplicationController
<<<<<<< HEAD
end
=======

  skip_before_action :authorized, only: [:new, :create]

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.create(params.require(:admin).permit(:user,        
    :password))
    session[:admin_id] = @admin.id
    redirect_to '/welcome'
    
  end
end
>>>>>>> b22034afac8950255d439fb4fb96f62d8715ca43
