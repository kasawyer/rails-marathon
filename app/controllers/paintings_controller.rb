class PaintingsController < ApplicationController
  def show
    @painting = Painting.find(params[:id])
  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @painting = Painting.new
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @painting = Painting.new(painting_params)
    @painting.gallery = @gallery

    if @painting.save
      flash[:notice] = "Painting added successfully"
      redirect_to gallery_path(@gallery)
    else
      flash.now[:notice] = @painting.errors.full_messages
      render :new
    end
  end

  private

  def painting_params
    params.require(:painting).permit(:title, :artist, :year, :timestamp, :gallery_id)
  end
end
