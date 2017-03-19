class Admin::LandingsController < ApplicationController
  before_action :set_landing, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, :is_admin!

  layout 'admin/board'

  def index
    @landings = Landing.all
  end

  def show
  end

  def new
    @landing = Landing.new
  end

  def edit
  end

  def create
    @landing = Landing.new(landing_params)

    respond_to do |format|
      if @landing.save
        format.html { redirect_to admin_landings, notice: 'landing was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /landings/1
  # PATCH/PUT /landings/1.json
  def update
    respond_to do |format|
      if @landing.update(landing_params)
        format.html { redirect_to admin_landings_path, notice: 'landing was successfully updated.' }
        format.json { render :show, status: :ok, location: @landing }
      else
        format.html { render :edit }
        format.json { render json: @landing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landings/1
  # DELETE /landings/1.json
  def destroy
    @landing.destroy
    respond_to do |format|
      format.html { redirect_to landings_url, notice: 'landing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landing
      @landing = Landing.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def landing_params
      params.require(:landing).permit(:description, :slug, :name, :item_id, :code, :css_file, :js_file, :is_published)
    end


  def is_admin!
    if current_user.is_admin == false
      redirect_to :root
    end
  end
    
end
