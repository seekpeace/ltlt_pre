class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  has_many :bids
  has_many :homes, through: :bids

  validates :name,
            :number, presence: true

  validates_uniqueness_of :email

  validates :email, presence: true,
                    length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 8 }, allow_blank: true
  #has_secure_password enforces presence validations upon object creation so the above
  #allow_blank: true added is when user edits their info but not their password

  # will finish implementing in version 2
  # # Returns a random token to use until it is destroyed when user logs out.
  # def User.new_token
  #   SecureRandom.urlsafe_base64
  # end
end
