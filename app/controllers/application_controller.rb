class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :set_top
  
  def set_top 
    @top_items = Item.all
  end
  
end
