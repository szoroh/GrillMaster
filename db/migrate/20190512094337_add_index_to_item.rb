class AddIndexToItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :cart, index: true
  end
end
