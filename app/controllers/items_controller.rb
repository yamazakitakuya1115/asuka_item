class ItemsController < ApplicationController
  def index
  end

  def search
    @item = Item.new
    @price = params[:price].to_i
    @kusa_buys = Kusa.where(buy: @price)
    @kusa_sells = Kusa.where(sell: @price)
    @tue_buys = Tue.where(buy: @price)
    @tue_sells = Tue.where(sell: @price)
    @tubo_buys = Tubo.where(buy: @price)
    @tubo_sells = Tubo.where(sell: @price)
    @udewa_buys = Udewa.where(buy: @price)
    @udewa_sells = Udewa.where(sell: @price)
    @makimono_buys = Makimono.where(buy: @price)
    @makimono_sells = Makimono.where(sell: @price)
    @buki_buys = Buki.where(buy: @price)
    @buki_sells = Buki.where(sell: @price)
    @tate_buys = Tate.where(buy: @price)
    @tate_sells = Tate.where(sell: @price)
  end
end