class Category < ApplicationRecord
    has_many :subscriptions
    # has_many :subscription_categories
    # has_many :subscriptions, through: :subscription_categories
end
