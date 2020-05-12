class AddGameToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_reference :players, :game, index: true
  end
end
