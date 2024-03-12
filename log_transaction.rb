class BankAccount
    def initialize
      @balance = 0
    end
  
    def deposit(amount)
      @balance += amount
      log_transaction("Deposit", amount)
    end
  
    def withdraw(amount)
      if amount <= @balance
        @balance -= amount
        log_transaction("Withdrawal", amount)
      else
        puts "Insufficient funds"
      end
    end
  
    private
  
    def log_transaction(type, amount)
      puts "#{type}: $#{amount}"
    end
  end
  
  account = BankAccount.new
  account.deposit(100)
  account.withdraw(50)
  