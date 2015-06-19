class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, presence: true

  before_save :send_confirmed_signup_email

  private

  def send_confirmed_signup_email
    if confirmed_at_changed?
      UserMailer.confirmed_signup(self).deliver_now
    end
  end
end
