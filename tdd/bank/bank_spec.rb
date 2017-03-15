require_relative 'bank'
RSpec.describe BankAccount do
  before(:each) do
    @account1 = BankAccount.new()
    @account1.deposit(20)
    @account1.deposit(20, "saving")
  end
  it 'has a getter for retrieving the checking account balance' do
    expect(@account1.checking).to be 20
  end
  it 'has a getter for retrieving the total account balance' do
    expect(@account1.total).to be 40
  end
  it 'has a method that allows users to withdraw cash' do
    @account1.withdraw(10, "checking")
    expect(@account1.checking).to be 10
  end
  it 'raises an error if user tries to withdraw more than they have in an account' do
    expect{@account1.withdraw(40)}.to raise_error(RuntimeError)
  end
  it 'raises an error if user tries to call getter method on number of bank accounts there are' do
    expect{BankAccount.number_accounts}.to raise_error(NoMethodError)
  end
  it 'raises an error if user tries to set the interest rate' do
    expect{@account1.interest_rate = 25}.to raise_error(NoMethodError)
  end
end
