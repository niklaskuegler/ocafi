class User < ApplicationRecord
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  after_create :send_welcome_email

  def set_default_role
    self.role ||= :user
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, presence: true
end
