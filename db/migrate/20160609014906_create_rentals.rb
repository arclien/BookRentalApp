class CreateRentals < ActiveRecord::Migration
  def self.up
    create_table :rentals do |t|
      t.date :date
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :rentals
  end
end
