class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  has_many :bids
  has_many :homes, through: :bids

  validates :email,
            :name,
            :number, presence: true

  validates_uniqueness_of :email

end
