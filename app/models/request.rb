class Request < ActiveRecord::Base
  # before_save :transition_submit
  has_many :request_transitions

  # Initialize the state machine
  def state_machine
    @state_machine ||= RequestWorkflowMachine.new(self, transition_class: RequestTransition)
  end

  def transition_submit
    transition_to(:submitted)
  end

  # Optionally delegate some methods
  delegate :can_transition_to?, :transition_to!, :transition_to, :current_state,
           to: :state_machine
end
