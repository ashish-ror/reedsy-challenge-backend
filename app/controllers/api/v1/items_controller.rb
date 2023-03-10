class Api::V1::ItemsController < ApplicationController

  def index
    items = Item.all
    render json: items
  end

  def update
    item = Item.find_by(code: params[:code])
    if item.update(item_params)
      render json: item
    else
      render json: { status: 'Error', message: 'Item not updated', data: item.errors }, status: :unprocessable_entity
    end
  end

  def get_price
    total = 0
    eval(params["items"]).each do |item|
      code, quantity = item[:code], item[:quantity]
      discount = calculate_discount(code, quantity)
      total += (Item.find_by(code: code).price * quantity * discount)
    end
    render json: "Total: #{total}"
  end

  def calculate_discount(code, quantity)
    1 - (Discount.where(code: code).select { |record| (record.lower_limit..record.upper_limit)
      .include?(quantity) }.first.discount/100.0 rescue 0)
  end

  private

  def item_params
    params.permit(:code, :price)
  end
end