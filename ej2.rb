class Product
   attr_reader :code, :name, :price
   def initialize(code, name, price)
      @code = code
      @name = name
      @price = price
   end
end

class Purchase
   def initialize
      @lista = Array.new
   end

   def add(item)
      @lista << item
   end

   def delete(anItem)
      @lista = @lista.select{ |item| item.code != anItem.code }
   end

   def total
      return @lista.inject(0) { |sum, item| sum + item.price }
   end

end
