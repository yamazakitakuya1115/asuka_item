require 'csv'

class ItemsController < ApplicationController
  def index
  end

  def search
    @item = Item.new
    @price = params[:price].to_i
    @kusa_buys = Kusa.where(buy: @price)
    @kusa_sells = Kusa.where(sell: @price)
    @tue_buys = Tue.where(buy: @price)
    @tue_buys = Tue.where(buy: @price)
    # @buys = Item.buy(params[:price].to_i)
    # @sells = Item.sell(params[:price].to_i)

    respond_to do |format|
      format.html
      format.csv do |csv|
        send_items_csv(@items)
      end
    end
  end

  def send_items_csv(item)
    csv_data = CSV.generate do |csv|
      header = %w(id buy send kind name)
      csv << header

      @items.each do |item|
        values = [item.id, item.buy, item.sell, item.kind, item.name]
        csv << values
      end

    end
    send_data(csv_data, filename: "items.csv")
  end

end