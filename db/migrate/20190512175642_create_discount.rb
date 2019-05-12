class CreateDiscount < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.belongs_to :cart, index: true
      t.string :kind
      t.string :name
      t.string :product_ids, array: true, default: []
      t.float :price
      t.integer :count

      t.timestamps
    end
  end
end
