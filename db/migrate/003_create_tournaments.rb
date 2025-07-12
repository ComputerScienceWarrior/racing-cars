class CreateTournaments < ActiveRecord::Migration[7.1]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :size 
      t.string :tournament_type
      t.string :season

      t.timestamps
    end
  end
end
