class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :gameurl
      t.integer :pot

      t.timestamps
    end
  end
end
