class Appliance
    def show_info
      puts "This is a household appliance."
    end
  end
  
  class Refrigerator < Appliance
    def unique_info
      puts "This is a refrigerator. It keeps your food cool."
    end
  end
  
  class Microwave < Appliance
    def unique_info
      puts "This is a microwave. It heats your food quickly."
    end
  end
  
  refrigerator = Refrigerator.new
  refrigerator.show_info 
  refrigerator.unique_info 
  
  microwave = Microwave.new
  microwave.show_info
  microwave.unique_info 
  