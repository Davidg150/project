class CreateOrderjerseys < ActiveRecord::Migration[5.2]
  def change
    create_table :orderjerseys do |t|
      t.integer :jersey_id
      t.string :title
      t.text :description
      t.string :size
      t.integer :quantity
      t.decimal :price
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
