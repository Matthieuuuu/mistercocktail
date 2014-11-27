class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.string :name
      t.references :cocktail, index: true
      t.references :ingredient, index: true

      t.timestamps
    end
  end
end
