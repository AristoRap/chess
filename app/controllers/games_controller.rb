class GamesController < ApplicationController
  def show
    @game = Game.find(params[:id])
    chessboard = {}
    @game.moves.each { |move| chessboard[move.to_position] = move.piece.name.lowercase }
  end

  def create
    @game = Game.new({ state: 'created', winner_id: nil })
    @player = Player.new({ user: current_user, game: @game })
    if @game.save && @player.save
      redirect_to @game, notice: "Let's roll!"
    else
      render root_path, alert: "Oops, something went wrong"
    end
  end
end
