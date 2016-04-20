class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(params.require(:note).permit(:title, :text))

    @note.save
    redirect_to @note
  end

  def new

  end

  def edit

  end

  def show
    @note = Note.find(params[:id])
  end

  def update

  end

  def destroy

  end
end
