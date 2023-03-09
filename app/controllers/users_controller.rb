class UsersController < ApplicationController
  skip_before_action :authorize, only: [:show, :signup, :update]
rescue_from ActiveRecord::RecordNotFound, with: :user_not_found

    def index 
      user = User.all
      render json: User.all, status: :ok
    end

     def show
       user = User.find_by( id: session[:user_id] )
       render json: user, serializer: UserCookbooksSerializer, status: :ok 
     end
 
     def signup
      # debugger
       user = User.create!( user_params )
        if user.valid?
          session[:user_id] = user.id
          render json: user, status: 201
        else 
          render json: { error: user.error.full_messages }, status: 422
        end
     end

     def update
       user = User.find(params[:id])
       user.update!(user_params)
       render json: user, status: 202
     end

     def destroy
      user = User.find(params[:id])
      user.destroy
      head :no_content
     end


    # def user_account
    #   user = User.find_by(id: session[:user_id]) 
    #       render json: user, status: :ok 
    #   end



     private 
 
     def user_params
       params.permit( :first_name, :last_name, :email, :password, :image)  
     end

 end