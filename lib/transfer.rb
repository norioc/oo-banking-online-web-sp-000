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
    else
      reject_transfer
    end
    
  end
  
  def reverse_transfer
    if valid? && receiver.balance > amount && self.status = "complete"
  
  def reject_transfer
    self.status = "rejected"
  end
  
  
  
  
end
