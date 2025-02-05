class CashRegister

    attr_accessor :total, :discount,:items, :last_transaction
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items=[]
        
    end
    
    def add_item (item,price,quantity=1)
    
        i = 0
        while i < quantity do
         @items << item
         i+=1
        end
    self.last_transaction = price * quantity
    self.total += self.last_transaction
    
    end
    
    
    
    def apply_discount
        if self.discount ==0
            "There is no discount to apply."  
        else
            self.total -= (self.total * (self.discount / 100.0))
            "After the discount, the total comes to $#{self.total.round}."
        end
    
    end
    
    def items 
    @items
    end
    
    def void_last_transaction
    
    self.total -= self.last_transaction
    
    end
    
    
    
    
    end