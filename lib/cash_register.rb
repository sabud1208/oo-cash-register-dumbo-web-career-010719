require "pry"

class CashRegister
attr_accessor :total, :discount, :last_transaction_amount, :items 


def initialize(total= 0, *discount)
  @total = total
  @discount = 20
   @items = []
end 

def add_item(title, price, quantity= 1)
  self.total += price * quantity
     quantity.times do
      @items << title
    end
   self.last_transaction_amount = price * quantity
  end
  
def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end
  
  

end

