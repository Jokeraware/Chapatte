class Order < ApplicationRecord
  belongs_to :user, optional: true
  has_many :items


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
