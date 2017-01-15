class GalleriesController < ApplicationController
  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
    @paintings = @gallery.paintings
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      flash[:notice] = "Gallery added successfully."
      redirect_to gallery_path(@gallery)
    else
      flash.now[:notice] = @gallery.errors.full_messages
      render :new
    end
  end

  private

  def gallery_params
    params.require(:gallery).permit(:name, :city, :state, :description, :zip)
  end
end
