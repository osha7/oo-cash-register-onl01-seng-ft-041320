class CashRegister

    attr_accessor :total, :discount, :items

def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
end

#
  def total  ###this method doesn't need to be here, already in attr_accessor
    @total
  end

  def add_item(title, price, quantity = 1)
    i = 0
   @price = price
   @quantity = quantity
    @total += price * quantity
    while i < @quantity
        @items << title
        i += 1
    end
  end

  def apply_discount
    if discount > 0
        @total = @total - (@discount * (@price/100))
        "After the discount, the total comes to $#{@total}."
    else
        "There is no discount to apply."
    end
  end

  def items  ###this method doesn't need to be here, already in attr_accessor
    @items
  end

  def void_last_transaction
    @total -= (@price * @quantity)
  end

end

