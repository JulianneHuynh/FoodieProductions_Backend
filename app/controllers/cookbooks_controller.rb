class CookbooksController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :cookbook_not_found
rescue_from ActiveRecord::RecordInvalid, with: :cookbook_invalid 

    def index 
      cookbook = Cookbook.all
      render json: Cookbook.all, status: :ok 
    end

    def show 
      cookbook = Cookbook.find( params[:id] )
      render json: cookbook, status: :ok 
    end

    def create
      cookbook = Cookbook.create!( cookbook_params )
      render json: cookbook, status: 201
    end

    def update
      cookbook = Cookbook.find( param[:id] )
      cookbook.update!( cookbook_params )
      render json: cookbook, status: :accepted
    end

    def destroy
      cookbook = Cookbook.find( params[:id] )
      cookbook.destroy 
      head :no_content 
    end

    private 

    def cookbook_params
      params.require( :cookbook ).permit( :title, :author, :cover_image, :user_id, :recipe_id, :opening_note_id)  
    end

    def cookbook_invalid invalid_cookbook
      render json: { errors: invalid_cookbook.record.errors.full_messages }, status: 422
    end

    def cookbook_not_found
      render json: { errors: ['Cookbook was not found'] }, status: 404
    end 
end
