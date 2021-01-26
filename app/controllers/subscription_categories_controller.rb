class SubscriptionCategoriesController < ApplicationController
    def index
        subscription_categories = SubscriptionCategory.all
        render json: SubcatSerializer.new(subscription_categories).to_serialized_json
    end

    def show
        subscription_category = SubscriptionCategory.find_by(id: params[:id])
        render json: SubcatSerializer.new(subscription_category).to_serialized_json
    end
end
