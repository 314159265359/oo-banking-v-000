class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :counter

  @counter = 0

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
    while @counter == 0
      if self.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
      @counter = 1
    end
      else

      @status = "rejected"
      "Transaction rejected. Please check your account balance."
      end
  end

end
