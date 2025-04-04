class CreateLocationAnimals < ActiveRecord::Migration[8.0]
  def change
    create_table :location_animals do |t|
      t.references :location, null: false, foreign_key: true
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
