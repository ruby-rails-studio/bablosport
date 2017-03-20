class BetsController < ApplicationController
  before_action :set_bet, only: [:show, :edit, :update, :destroy]

  def index
    @bets = Bet.all
  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet
      @bet = Bet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bet_params
      params.require(:bet).permit(:is_finish, :value, :gain, :user_id, :description, :event, :event_type)
    end
end
