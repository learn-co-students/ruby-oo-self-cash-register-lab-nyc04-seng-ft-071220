
require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = nil)
        @total = 0
        @discount = discount
        @items = []
        @prices = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times do 
        self.items << title
        end
        
        self.total += (price * quantity)

        self.last_transaction = price * quantity
        #keeps track of the last_transaction in order to void_last_transaction
    end

    def apply_discount
        if self.discount
            self.total -= self.total * self.discount / 100
            self.total
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction

        self.total = self.total - self.last_transaction

    end

end


# binding.pry
0