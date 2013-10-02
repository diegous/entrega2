require "./ej2.rb"

p1 = Product.new 1, 'Martillo', '50'
p2 = Product.new 2, 'Clavos x 100', '10'
p3 = Product.new 3, 'chori', 15
p4 = Product.new 4, 'pan', 5
p5 = Product.new 4, 'pan', 5
p6 = Product.new 4, 'pan', 5
p7 = Product.new 5, 'chori', 15
p8 = Product.new 5, 'chori', 15
p9 = Product.new 6, 'chocolate', 55
p10 = Product.new 7, 'h2oh', 1
p11 = Product.new 8, 'te_abrocho', 9

p = Purchase.new
p.add p1
p.add p2
p.add p3
p.add p4
p.add p5
p.add p6
p.add p7
p.add p8
p.add p9
p.add p10

p.apply_discount do |purchase|
  hammers = purchase.products.collect { |product| product.code == '01' }
  purchase.total -= purchase.total * 0.1 if hammers.any?
end

puts "Total de la compra con primer descuento "+p.total

