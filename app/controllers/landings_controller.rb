class LandingsController < ApplicationController
  before_action :set_landing, only: [:show]

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing
      @landing = Landing.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landing_params
      params.require(:landing).permit(:slug, :name, :item_id, :code, :css_file, :js_file, :is_published)
    end
end
