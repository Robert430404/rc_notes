class Api::V1::NotesController < ApplicationController
  before_filter :restrict_access

  def index
    @notes = Note.all

    respond_to do |format|
      format.json { render json: @notes }
    end
  end

  private
    def restrict_access
      api_key = ApiKey.find_by_access_token(params[:access_token])
      head :unauthorized unless api_key
    end
end
