class Handler < ActiveRecord::Base

  has_many :homes


  validates :handler_name,
            :handler_work,
            :handler_email, presence: true

  validates_uniqueness_of :handler_email

  # validates :agent_status, presence: true
end
