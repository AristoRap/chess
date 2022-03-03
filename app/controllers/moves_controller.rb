class MovesController < ApplicationController
  def create
    raise
    @move = Move.new(move_params)
    respond_to do |format|
      format.json { render json: @move }
    end
  end

  private

  def move_params
    params.require(:move).permit(:game_id, :piece_id, :captured_id, :from_position, :to_position)
  end
end
