class OpeningNotesController < ApplicationController

rescue_from ActiveRecord::RecordNotFound, with: :opening_note_not_found
rescue_from ActiveRecord::RecordInvalid, with: :opening_note_invalid 

    def index 
      opening_note = OpeningNote.all
      render json: OpeningNote.all, status: :ok 
    end

    def show 
      opening_note = OpeningNote.find( params[:id] )
      render json: opening_note, status: :ok 
    end

    def create
      opening_note = OpeningNote.create!( opening_note_params )
      render json: opening_note, status: 201
    end

    def update
      opening_note = OpeningNote.find( param[:id] )
      opening_note.update!( opening_note_params )
      render json: opening_note, status: :accepted
    end

    def destroy
      opening_note = OpeningNote.find( params[:id] )
      opening_note.destroy 
      head :no_content 
    end

    private 

    def opening_note_params
      params.require( :opening_note ).permit( :image, :description, :)  
    end

    def opening_note_invalid invalid_opening_note
      render json: { errors: invalid_opening_note.record.errors.full_messages }, status: 422
    end

    def opening_note_not_found
      render json: { errors: ['Not unavailable'] }, status: 404
    end 
end
