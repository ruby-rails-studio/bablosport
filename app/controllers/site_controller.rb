class SiteController < ApplicationController
  
  def home
  end

  def rating
    @items = Item.all
  end

end
