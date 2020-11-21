class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :kusa
  belongs_to :tue
  belongs_to :tubo
  belongs_to :makimono
  belongs_to :buki
  belongs_to :tate

  validates :price, format: {with: /\A[0-9]+\z/ }

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