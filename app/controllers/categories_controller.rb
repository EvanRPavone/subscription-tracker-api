class CategoriesController < ApplicationController
    def index
        categories = Category.all
        render({json: categories, include: {subscriptions: {except: [:created_at, :updated_at]}}, except: [:created_at, :updated_at]})
    end

    def create
        category = Category.create(name: params[:name])
        render({json: category})
    end
end
