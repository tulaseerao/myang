class RequestWorkflowMachine
  include Statesman::Machine

  state :submitted, initial: true
  state :cancelled
  state :approved
  state :denied
  state :closed

  transition from: :submitted,      to: [:cancelled, :approved, :denied]
  transition from: :cancelled, to: :submitted
  transition from: :approved,    to: [:submitted,:cancelled, :closed]
  transition from: :denied,      to: [:submitted,:cancelled]

  # guard_transition(to: :approved) do |request|
  #   request.not_expired?
  # end

  # before_transition(to: :submitted) do |request, transition|
  #   Request.new(request).submit
  # end

  # after_transition(to: :purchased) do |order, transition|
  #   MailerService.order_confirmation(order).deliver
  # end
end
