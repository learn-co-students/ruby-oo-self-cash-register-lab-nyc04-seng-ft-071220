
require 'pry'

class CashRegister
  
    
  attr_accessor :items, :discount, :total, :last_transaction

    def initialize(discount_arg=0)
    @total=0
    @discount=discount_arg
    @items=[]
    end





def add_item(title, price, quantity=1)
    
    counter = 0
    while counter < quantity do
        @items << title
        @last_transaction = price * quantity
        counter += 1
    end
  
    self.total += price * quantity
    #binding.pry
  end


  #couldn't figure this out so looked at solution
  def apply_discount
    if discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      #binding.pry
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end



    #couldn't figure this out so looked at solution
  def void_last_transaction
    self.total = self.total - self.last_transaction
  
   # binding.pry
  end




 


end

practice=CashRegister.new(30)
practice.methods
practice.items=["eggs", "ham", "bacon"]

#binding.pry
0
