class CreateJerseys < ActiveRecord::Migration[5.2]
  def change
    create_table :jerseys do |t|
      t.string :country
      t.string :team
      t.integer :year
      t.string :image_url
      t.text :description
      t.string :size
      t.decimal :price

      t.timestamps
    end
  end
end
