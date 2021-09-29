class CreateItemCatalogos < ActiveRecord::Migration[6.1]
  def change
    create_table :item_catalogos do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
