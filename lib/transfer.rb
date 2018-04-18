class Transfer
  attr_accessor :sender, :receiver, :status, :transfer_amount

  def initialize(sender, receiver, status = "pending", transfer_amount = 50)
    @sender = sender
    @receiver = receiver
    @status = status
    @transfer_amount = transfer_amount
  end

end
