class Api::V1::OrderDetailsController < ApplicationController
  def index
    @order_details = OrderDetail.all
    render json: @order_details
  end

  def show
    @order_detail = OrderDetail.find(params[:id])
    render json: @order_detail
  end

  def create
    @order_detail = OrderDetail.new(order_detail_params)

    if @order_detail.save
      render json: @order_detail, status: :created
    else
      render json: @order_detail.errors, status: :unprocessable_entity
    end
  end
end

def update
  @order_detail = OrderDetail.find(params[:id])

  if @order_detail.update(order_detail_params)
    render json: @order_detail
  else
    render json: @order_detail.errors, status: :unprocessable_entity
  end

  def destroy
    @order_detail = OrderDetail.find(params[:id])
    @order_detail.destroy
  end

  private

  def order_detail_params
    params.require(:order_detail).permit(:quantity, :unit_price)
  end
end
