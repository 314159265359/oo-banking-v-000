class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

  def valid?
    (@sender.valid? && @receiver.valid?) ? true : false
  end

  def execute_transaction
    counter = 0
    while counter != 1
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
    counter = 1
  end
  end

end
