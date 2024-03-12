module Payments
    class Invoice
      def initialize(number)
        @number = number
      end
  
      def display
        puts "Invoice number: #{@number}"
      end
    end
  
    class Receipt
      def initialize(number)
        @number = number
      end
  
      def display
        puts "Receipt number: #{@number}"
      end
    end
  end
  
  invoice = Payments::Invoice.new("INV123")
  invoice.display
  
  receipt = Payments::Receipt.new("REC456")
  receipt.display
  