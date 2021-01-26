class SubscriptionsController < ApplicationController
    def create
        subscription = Subscription.create(name: params[:name], price: params[:price], paymentDate: params[:paymentDate], plan: params[:plan], category_id: params[:category_id])
        render json: subscription
    end

    def destroy
        subscription = Subscription.find_by(id: params[:id])
        subscription.destroy
        render json: {successful: true}
    end
end
