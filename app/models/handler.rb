class Handler < ActiveRecord::Base

  has_many :homes


  # validates :agent_status,
  #           :handler_name,
  #           :handler_work,
  #           :handler_email, presence: true
  #
  # validates_uniqueness_of :handler_email
end
