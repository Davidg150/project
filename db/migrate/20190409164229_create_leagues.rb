class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :team
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
