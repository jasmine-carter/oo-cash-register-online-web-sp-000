class CashRegister

attr_accessor :total, :discount, :item, :transaction

  def initialize(employee_discount = 0)
    @item = []
    @total = 0
    @discount = employee_discount
  end

  def add_item(title, price, quantity = 1)
    foo= 1..quantity
    foo.to_a
    foo.each do |i|
      @item << title
    end
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      discounted_total = @total * @discount.to_f / 100
      @total = @total - discounted_total
      "After the discount, the total comes to $#{@total.to_i}."
    elsif
      @discount == 0
      "There is no discount to apply."
    end
  end

  def items
    @item
  end

  def void_last_transaction

  end
end
