class ContactPerson < ApplicationRecord
  has_many :orders

  def full_name
    "#{surname} #{name} #{patronymic}"
  end
end
