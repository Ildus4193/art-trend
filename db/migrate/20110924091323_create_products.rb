class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :title
      t.text :short_description
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
