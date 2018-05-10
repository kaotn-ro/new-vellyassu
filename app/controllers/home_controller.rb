class HomeController < ApplicationController
  def index
    if user_signed_in?
      @worktime = current_user.last_worktime
      if @worktime.present?
        @resttime = @worktime.last_resttime
      end
    end
  end
end