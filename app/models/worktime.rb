class Worktime < ApplicationRecord
  belongs_to :user
  has_many :rest_times, dependent: :destroy
  accepts_nested_attributes_for :rest_times

  def last_rest_time
    self.rest_times.where(end_time: nil).order(created_at: :desc).first
  end

end