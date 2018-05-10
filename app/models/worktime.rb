class Worktime < ApplicationRecord
  belongs_to :user
  has_many :rest_times, dependent: :destroy

  def last_rest_time
    self.rest_times.where(end_time: nil).order(created_at: :desc).first
  end

end