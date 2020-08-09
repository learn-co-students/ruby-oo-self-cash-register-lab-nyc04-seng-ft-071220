class CashRegister
    
    attr_accessor :total, :discount, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantitiy=1)
        @total += price * quantitiy
        quantitiy.times do
           @items << title
        end
        @last_transaction = price * quantitiy
    end

    def apply_discount
        if discount!=0
            @total *= (1-@discount/100.00) 
            "After the discount, the total comes to $#{@total.to_i}."
        else
            "There is no discount to apply."
        end
    end
    
    def items
        @items
    end
    
    def void_last_transaction
        @total = @total - @last_transaction
    end

end


