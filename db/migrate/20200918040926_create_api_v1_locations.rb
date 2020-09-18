class CreateApiV1Locations < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_locations do |t|
      t.string :name, null: false, unique: true
      t.integer :total, null: false
      t.integer :white_total, null: false
      t.integer :latinx_total, null: false
      t.integer :black_total, null: false
      t.string :black_pop, null: false
      t.string :black_deaths, null: false
      t.string :black_likely, null: false
      t.string :latinx_likely, null: false

      t.timestamps
    end
  end
end
