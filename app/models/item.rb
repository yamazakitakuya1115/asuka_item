class Item < ApplicationRecord
  def self.buy(search)
    if search != ""
      Item.where(buy: "#{search}")
    end
  end
  def self.sell(search)
    if search != ""
      Item.where(sell: "#{search}")
    end
  end
end