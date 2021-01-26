class Subscription < ApplicationRecord
    belongs_to :subscription
    # has_many :subscription_categories
    # has_many :categories, through: :subscription_categories
end
