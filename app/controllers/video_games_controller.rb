class VideoGamesController < ApplicationController
  def index
    @video_games = VideoGame.all
  end

  def show
    @video_game = VideoGame.find(params[:id])
  end

  def new
    @video_game = VideoGame.new
  end

  def create
    @video_game = VideoGame.new(video_game_params)

    if @video_game.save
      redirect_to video_games_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @video_game = VideoGame.find(params[:id])
  end

  def update
    @video_game = VideoGame.find(params[:id])

    if @video_game.update(video_game_params)
      redirect_to video_games_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @video_game = VideoGame.find(params[:id])
    @video_game.destroy

    redirect_to video_games_path
  end

  private

  def video_game_params
    params.require(:video_game).permit(:title, :genre)
  end
end
