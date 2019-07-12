class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_or_create_by(name: params[:name])
    session[:user_id] = @user.id
    redirect_to root_path
  end

  def destroy
    session.delete
    redirect_to root_path
  end

end
