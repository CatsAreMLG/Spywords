class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.text :words
      t.text :colors

      t.timestamps
    end
  end
end
