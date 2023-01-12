class SubscriptionsController < ApplicationController
  def create
    # customer = Customer.find(params[:customer_id])
    # tea = Tea.find(params[:tea_id])

    new_sub = Subscription.create!(new_params)
    # if new_sub.save

    # end
    render json: SubscriptionSerializer.new(new_sub)
  end

  def index
    render json: SubscriptionSerializer.new(Subscription.where(customer_id: params[:customer_id]))
  end

  private

  def new_params
    params.permit(:title, :price, :status, :frequency, :tea_id, :customer_id)
  end
end