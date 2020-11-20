class ItemsController < ApplicationController
  def search
    @item = Item.new
    @price = params[:price].to_i
    @buys = Item.buy(params[:price].to_i)
    @sells = Item.sell(params[:price].to_i)
    if @price == ""
      @price = 0
    end
  end
end