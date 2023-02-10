class SessionsController < ApplicationController
  
  def create 
    @user = User.find_by( email: params[:email] )
    if @user and @user.authenticate(params[:password] )
      logged_user = JWT.encode( { user: @user.id }, ENV['JWT_TOKEN'] )
      render json: { uid: logged_user }, status: :ok
    else 
      render json: { errors: ['Invalid email and/or password'] }, status: :unauthorized
    end
  end
end