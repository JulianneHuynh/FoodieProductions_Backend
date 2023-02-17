class RecipeBoxesController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :recipe_box_not_found
rescue_from ActiveRecord::RecordInvalid, with: :recipe_box_invalid 

    def index 
      recipe_box = RecipeBox.all
      render json: RecipeBox.all, status: :ok 
    end

    def show 
      recipe_box = RecipeBox.find( params[:id] )
      render json: recipe_box, status: :ok 
    end

    def create
      recipe_box = RecipeBox.create!( recipe_box_params )
      render json: recipe_box, status: 201
    end

    def update
      recipe_box = RecipBox.find( param[:id] )
      recipe_box.update!( recipe_box_params )
      render json: recipe_box, status: :accepted
    end

    def destroy
      recipe_box = RecipeBox.find( params[:id] )
      recipe_box.destroy 
      head :no_content 
    end

    private 

    def recipe_box_params
      params.require( :recipe_box ).permit( :title, :author, :user_id, :recipe_id, :opening_note_id )  
    end

    def recipe_box_invalid invalid_recipe_box
      render json: { errors: invalid_recipe_box.record.errors.full_messages }, status: 422
    end

    def recipe_box_not_found
      render json: { errors: ['Recipe box was not found'] }, status: 404
    end 
end
