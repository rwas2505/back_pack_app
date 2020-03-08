class CreatePacks < ActiveRecord::Migration[6.0]
  def change
    create_table :packs do |t|
      t.string :name
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
