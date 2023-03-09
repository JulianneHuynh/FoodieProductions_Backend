class RecipesController < ApplicationController

require 'rest-client'
rescue_from ActiveRecord::RecordNotFound, with: :recipe_not_found
rescue_from ActiveRecord::RecordInvalid, with: :recipe_invalid 

    def index 
      recipe = Recipe.all
      render json: Recipe.all, status: :ok 
    end

    def show 
      recipe = Recipe.find( params[:id] )
      render json: recipe, status: :ok 
    end

    def create
      recipe = Recipe.create!( recipe_params )
      render json: recipe, status: 201
    end

    def update
      recipe = Recipe.find( param[:id] )
      recipe.update!( recipe_params )
      render json: recipe, status: :accepted
    end

    def destroy
      recipe = Recipe.find( params[:id] )
      recipe.destroy 
      head :no_content 
    end

    def get_recipes
      url = "https://api.spoonacular.com/recipes/#{id}/information?apiKey=591b78136be1410bbf7ac50ef0ff1ad"
      response = JSON.parse(RestClient.get(url))
    end

    private 

    def recipe_params
      params.require( :recipe ).permit( :cookbook_id, :name, :image, :prep_time, :cook_time, :yield, :ingredients, :instructions )  
    end

    def recipe_invalid invalid_recipe
      render json: { errors: invalid_recipe.record.errors.full_messages }, status: 422
    end

    def recipe_not_found
      render json: { errors: ['Recipe was not found'] }, status: 404
    end 

end
