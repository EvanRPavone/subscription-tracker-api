class Subscription < ApplicationRecord
    has_many :subscription_categories
    has_many :categories, through: :subscription_categories
end
