require 'pry'
class CashRegister
  @@allTransaction = []
attr_accessor :total, :discount, :items


def initialize(discount = 0 )
 @total = 0
 @discount = discount
 @items = []
end

def add_item(item, price, quantity = 1)
  @total += quantity * price
  quantity.times do
    @items << item
  end
  @@allTransaction << @total
  @items

end

def apply_discount
  @total *= (1.0 - (@discount.to_f/100))

  if @discount == 0
    "There is no discount to apply."
  else
  "After the discount, the total comes to $#{@total.to_i}."
  end


end

def items
  @items
end

def void_last_transaction
  @total -= @@allTransaction[-1]
end

end
  # y = CashRegister.new(20)
  # y.add_item("tomato", 5, 6)
  # y.add_item("banana", 2, 10)
  # y.apply_discount
  # y.add_item("orange", 2, 10)
  # y.apply_discount
