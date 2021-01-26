class CreateSubscriptionCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :subscription_categories do |t|
      t.references :subscription, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
