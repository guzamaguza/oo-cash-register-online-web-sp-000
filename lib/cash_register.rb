require 'pry'

class CashRegister

  attr_accessor :total, :discount, :price, :items

  def initialize(discount = 20)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += price*quantity

    if quantity>1
        i=0
        while i<quantity
          @items << title
          i+=1
        end
    else
    @items << title
    end
@items
  end

  def apply_discount
      @discount = discount
      i = 0
      if @discount > 0
        @discount = @discount/100.to_f
        @total  = @total - (@total * @discount)
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "There is no discount to apply."
      end
  end


  def items(items)
    returns @items
  end


  def void_last_transaction
    @total = @total - @price
  end



end
