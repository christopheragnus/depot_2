class LineItem < ApplicationRecord
  belongs_to :order, optional:true
  belongs_to :product, optional:true
  belongs_to :cart

  #we define the relationship from the order to the line item
  #indicating that all line items that belong to an order are 
  #to be destroyed whenever the order is destroyed

  def total_price
    product.price * quantity
  end
end
