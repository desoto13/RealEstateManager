class CreateRealEstates < ActiveRecord::Migration[6.1]
  def change
    create_table :real_estates do |t|
      t.string :owner
      t.string :address
      t.integer :sqmt
      t.decimal :price
      t.integer :rooms
      t.integer :floors
      t.boolean :air_cond
      t.integer :units
      t.integer :shops
      t.integer :parking
      t.string :type, null: false
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
