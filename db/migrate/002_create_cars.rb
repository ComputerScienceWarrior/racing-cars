class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :nickname
      t.integer :tournament_match_wins
      t.integer :tournament_match_losses
      t.integer :championship_wins
      t.integer :championship_losses
      t.integer :wins
      t.integer :losses
      t.integer :draws
      t.string :rank
      t.string :img_url
      t.string :season_pts
      t.string :total_pts
  
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
