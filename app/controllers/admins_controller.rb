class AdminsController < ApplicationController

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
