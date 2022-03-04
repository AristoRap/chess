class GamesController < ApplicationController
  def show
    @order = %w[white black]
    @game = Game.find(params[:id])
    @chessboard = chessboard_default
    @game.moves.where(captured_id: nil).each do |move|
      @chessboard[move.to_position] = move.piece
      @chessboard[move.from_position] = nil
    end
    @iteration = @game.player_white == current_user ? (0..63).to_a.reverse : (0..63).to_a
  end

  def create
    @game = Game.new({ state: 'created', winner_id: nil, player_white: current_user })
    @player = Player.new({ user: current_user, game: @game })
    if @player.save
      redirect_to @game, notice: "Let's roll!"
    else
      redirect_to root_path, alert: "Oops, something went wrong"
    end
  end

  def destroy
    @game = Game.find(params[:id])
    player = Player.find_by(user: current_user, game: @game)
    player.destroy
    if @game.destroy
      redirect_to root_path, notice: "Game deleted."
    else
      redirect_to root_path, alert: "We got checkmate'd...something went wrong."
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
