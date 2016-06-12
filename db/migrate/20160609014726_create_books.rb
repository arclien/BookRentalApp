class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.string :genre
      t.text :description
      

      t.timestamps null: false
    end
  end

  def self.down
    drop_table :books
  end
end
