class MovesController < ApplicationController
  def create
    @move = Move.new(move_params)
    @move.player = Player.find_by(user: current_user, game_id: params[:game_id])
    respond_to do |format|
      if @move.save
        format.json { render json: @move }
      else
        format.json { render json: @move.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def move_params
    params.require(:move).permit(:game_id, :piece_id, :captured_id, :from_position, :to_position)
  end
end
