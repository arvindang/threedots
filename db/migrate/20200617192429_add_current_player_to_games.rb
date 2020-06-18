class AddCurrentPlayerToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :current_player, :string
  end
end
