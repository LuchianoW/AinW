class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :animal, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.text :post_content
      t.datetime :date

      t.timestamps
    end
  end
end
