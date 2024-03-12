class Gadget
    attr_reader :name, :price
    attr_writer :price
    
    def initialize(name, price)
      @name = name
      @price = price
    end
  end
  
  gadget = Gadget.new("Smartphone", 9999.99)
  puts "Name: #{gadget.name}"
  
  gadget.price = 10099.99
  puts "Updated Price: $#{gadget.price}"
  