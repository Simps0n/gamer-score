class AddGenreToVideoGames < ActiveRecord::Migration[7.0]
  def change
    add_column :video_games, :genre, :string
  end
end
