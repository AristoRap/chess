class GamesController < ApplicationController
  def show
    @order = %w[white black white black white black white black]
    @game = Game.find(params[:id])
    @chessboard = chessboard_default
    @game.moves.where(captured_id: nil).each { |move| @chessboard[move.to_position] = move.piece}

    # raise
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

  private

  def chessboard_default
    @pieces = Piece.all
    board = (0..63).to_a.each_with_object({}) do |num, hash|
      hash[num] = nil
      hash
    end
    @pieces.each do |piece|
      board[piece.start_position] = piece
    end
    board
  end
end
