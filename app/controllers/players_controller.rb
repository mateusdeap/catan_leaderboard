class PlayersController < ApplicationController
  def index
    @players = Player.all.order(score: :desc)
  end
end
