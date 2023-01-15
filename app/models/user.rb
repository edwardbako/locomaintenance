class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :registerable, :recoverable, :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :rememberable, :validatable

  enum role: [:manager, :executor]

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
    false
  end
end
