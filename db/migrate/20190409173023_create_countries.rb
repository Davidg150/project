class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :country
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
