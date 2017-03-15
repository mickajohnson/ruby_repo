class BankAccount
  @@number_accounts = 0
  def initialize
    @account_number = gen_account
    @checking = 0
    @saving = 0
    @total = 0
    @@number_accounts += 1
    @interest_rate = 0.01
  end

  def deposit (amount=0, account_type="checking")
    @checking += amount if account_type.downcase === "checking"
    @saving += amount if account_type === "saving"
    @total += amount
    self
  end

  def balance (account_type="total")
    puts "Your checking account balance is: #{@checking}" if account_type === "checking"
    puts "Your saving account balance is: #{@saving}" if account_type === "saving"
    puts "Your total amount is: #{@total}" if account_type === "total"
    self
  end

  def withdraw (amount=0, account_type="checking")
    if account_type === "checking"
      if @checking - amount < 0
        raise "You have insufficient funds"
        self
      else
        @checking -= amount
        @total -=amount
        self
      end
    elsif @saving - amount < 0
      raise "You have insufficient funds"
      self
    else
      @saving -= amount
      @total -=amount
      self
    end
  end

  def account_information
    puts "Account Number: #{@account_number}\nTotal Money: #{@saving + @checking}\nChecking Balance: #{@checking}\nSaving Balance: #{@saving}\nInterest Rate #{@interest_rate}"
    self
  end

  attr_reader :account_number, :checking, :saving, :total

  private
    def gen_account
      rand(1000..9999)
    end
end
