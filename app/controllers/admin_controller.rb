class AdminController < ApplicationController
  def index
    redirect_to '/admin/games'
  end
end
