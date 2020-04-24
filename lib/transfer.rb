  class Transfer
  
  attr_accessor :status
  attr_reader :amount, :sender, :receiver 

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver 
    @amount = 50 
  end 
  
  def valid? 
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction 
    if valid? && sender.balance>amount && self.status = "pending"
    sender.balance -= amount 
    receiver.balance += amount
    self.status = "complete"
    
  end
  
  
  
  
  
end
