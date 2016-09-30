module Sipity
  # The intersection of an Actor and a Role. In other words, the actor
  # is paid to do things; What do those things represent.
  #
  # @see Sipity::Role for discussion of roles
  class WorkflowResponsibility < ActiveRecord::Base
    self.table_name = 'sipity_workflow_responsibilities'
    belongs_to :agent, class_name: 'Sipity::Agent'
    belongs_to :workflow_role, class_name: 'Sipity::WorkflowRole'
  end
end