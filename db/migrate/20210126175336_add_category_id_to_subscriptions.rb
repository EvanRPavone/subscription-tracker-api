class AddCategoryIdToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :category_id, :integer
  end
end
