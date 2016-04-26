class Api::V1::NotesController < ApplicationController
  def index
    @notes = Note.all

    respond_to do |format|
      format.json { render json: @notes }
    end
  end
end
