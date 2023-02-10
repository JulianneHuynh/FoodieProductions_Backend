class UsersController < ApplicationController
 # skip_before_action :authorize!
rescue_from ActiveRecord::RecordNotFound, with: :user_not_found
rescue_from ActiveRecord::RecordInvalid, with: :user_invalid 

    def index 
      user = User.all
      render json: User.all, status: :ok 
    end

    def show 
      user = User.find( params[:id] )
      render json: user, status: :ok 
    end

    def create
      user = User.create!( user_params )
      render json: user, status: 201
    end

    def update
      user = User.find( param[:id] )
      user.update!( user_params )
      render json: user, status: :accepted
    end

    def destroy
      user = User.find( params[:id] )
      user.destroy 
      head :no_content 
    end

    #   def login
    #     user = User.find_by(email:params[:email])
    #     if user && user.authenticate(params[:password])
    #         render json: user, status: :ok
    #     else 
    #         render json: {errors: 'Incorrect Username or Password'}, status: :unauthorized
    #     end 
    # end 

    private 

    def user_params
      params.require( :user ).permit( :email, :password, :first_name, :last_name, :date_of_birth, :image)  
    end

    def user_invalid invalid_user
      render json: { errors: invalid_user.record.errors.full_messages }, status: 422
    end

    def user_not_found
      render json: { errors: ['User was not found'] }, status: 404
    end 


    # def update
    #   render json: { messages: ['You hit the update method.'], user: current_user}, status: :ok
    # end
end
 