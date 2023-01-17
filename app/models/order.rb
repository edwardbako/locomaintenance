class Order < ApplicationRecord
  belongs_to :locomotive
  belongs_to :contact_person, optional: true
  belongs_to :executor,
              class_name: "User",
              foreign_key: :executor_id,
              optional: true

  accepts_nested_attributes_for :contact_person, reject_if: :all_blank

  enum status: [:newborn, :in_progress, :completed, :canceled]
end
