class CashRegister
    attr_accessor :total, :discount, :items, :quantity, :last_transaction

    def initialize(discount = nil)
        self.total = 0
        self.discount = discount
        self.items = []
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times {self.items << title}
        self.last_transaction = [title, price, quantity]
    end

    def apply_discount
        if self.discount != nil
            self.total -= self.total * self.discount/100
            p "After the discount, the total comes to $#{self.total}."
        else
            p "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.last_transaction[1] * self.last_transaction[2]
        self.items.delete_at(self.items.index(self.last_transaction[0]))
    end
    
end
