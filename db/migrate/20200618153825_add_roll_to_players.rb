class AddRollToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :roll, :string
  end
end
