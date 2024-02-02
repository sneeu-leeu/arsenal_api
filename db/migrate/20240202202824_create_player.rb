class CreatePlayer < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.text :player_name
      t.text :position
      t.integer :jersey_number
      t.integer :goals_scored
      
      t.timestamps
    end
  end
end
