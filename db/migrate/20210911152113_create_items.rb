class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer "number"
      t.string "description"
      t.references :tables, foreign_key: true
      
      t.timestamps
    end
  end
end
