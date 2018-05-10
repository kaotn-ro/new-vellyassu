class HomeController < ApplicationController
  def index
    if user_signed_in?
      @worktime = current_user.last_worktime
      if @worktime.present?
        @rest_time = @worktime.last_rest_time
      end
    end
  end
end