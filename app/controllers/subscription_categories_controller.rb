class SubscriptionCategoriesController < ApplicationController
    def index
        subscription_categories = SubscriptionCategory.all
        render json: subscription_categories, include: [:subscription, :category]
    end
end
