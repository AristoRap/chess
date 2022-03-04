class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    return unless user_signed_in?

    @game = Game.new
    @games = Player.includes(:game).where(user: current_user).map(&:game).reject { |g| g.state == 'finished' }
  end
end
