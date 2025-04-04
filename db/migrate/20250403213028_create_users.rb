class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :post_count
      t.integer :ani_sighting_num
      t.string :password_digest

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
