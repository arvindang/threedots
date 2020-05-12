class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :currency
      t.integer :turn

      t.timestamps
    end
  end
end
