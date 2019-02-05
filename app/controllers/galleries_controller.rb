class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show]

  # GET /gallerys/1
  # GET /gallerys/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_gallery
    @gallery = Gallery.friendly.find(params[:id])
  end
end
