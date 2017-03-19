class Admin::BoardController < ApplicationController

  before_action :authenticate_user!, :is_admin!

  def index
  end

  private

  def is_admin!
    if current_user.is_admin == false
    	redirect_to :root
    end
  end

end
