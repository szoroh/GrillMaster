class CreateItem < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.belongs_to :product, index: true
      t.integer :product_id
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
