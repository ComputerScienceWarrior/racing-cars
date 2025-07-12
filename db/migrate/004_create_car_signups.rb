class CreateCarSignups < ActiveRecord::Migration[7.1]
  def change
    create_table :car_signups do |t|
      t.string :signed_up
      t.references :car, null: false, foreign_key: true
      t.references :tournament, null: false, foreign_key: true

      t.timestamps
    end
  end
end
