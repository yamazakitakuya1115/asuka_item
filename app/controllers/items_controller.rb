class ItemsController < ApplicationController
  def search
    @item = Item.new
    @price = params[:price]
    @buys = Item.buy(params[:price].to_i)
    @sells = Item.sell(params[:price].to_i)
  end
end