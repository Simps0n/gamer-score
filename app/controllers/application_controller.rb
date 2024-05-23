# frozen_string_literal: true

# Application main Controller
class ApplicationController < ActionController::Base
  def index
    @video_games = VideoGame.all
  end
end
