class Order < ApplicationRecord
 
  has_many :join_table_order_items
  has_many :items, through: :join_table_order_items
  belongs_to :user

  def total
    total = 0
    self.items.each do |item|
      total += item.price
    end
    return total
  end

  def self.total_commande
    total = 0
    Order.all.each do |order|
      total += order.total 
    end
    return total
  end
end
