class CashRegister
	attr_accessor :total 
	
	def initialize(employee_discount = 0)
		@total = 0
		@employee_discount = employee_discount
		@items = Array.new
	end

	def discount
		@employee_discount
	end

	def total
		@total
	end

	def add_item(title, price, quantity = 1)
		quantity.times do |x|
			@items << title
		end
		self.total += price * quantity
	end

	def apply_discount
		if @employee_discount != 0
			self.total -= @employee_discount * 10
			return "After the discount, the total comes to $#{self.total}."
		else
			return "There is no discount to apply."
		end
	end

	def items
		@items
	end

	def void_last_transaction
		@total = 0.0
	end
end
