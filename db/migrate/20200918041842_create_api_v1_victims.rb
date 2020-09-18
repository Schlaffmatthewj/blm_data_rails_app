class CreateApiV1Victims < ActiveRecord::Migration[6.0]
  def change
    create_table :api_v1_victims do |t|
      t.string :name, null: false, unique: true
      t.integer :age, null: false
      t.date :when, null: false
      t.string :place, null: false
      t.text :details, null: false
      t.string :photo, default: 'https://assets.change.org/photos/6/fd/qd/UefDqdBUZOcYZpY-800x450-noPad.jpg?1526960855'

      t.timestamps
    end
  end
end
