class Order < ApplicationRecord
  belongs_to :user
  belongs_to :party_item


  validates :start_date, :end_date, presence: true
  validate :start_date_cannot_be_in_the_past
  validate :end_after_start

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def end_after_start
    if start_date.present? and end_date.present? && end_date <= start_date
      errors.add(:end_date, "Cannot be before start date")
    end
  end
end
