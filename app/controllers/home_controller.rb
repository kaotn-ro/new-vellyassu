class HomeController < ApplicationController
  def index
    if user_signed_in? && current_user.worktimes.count != 0

      @worktime = current_user.worktimes.order(created_at: :desc).last

    end
  end
end