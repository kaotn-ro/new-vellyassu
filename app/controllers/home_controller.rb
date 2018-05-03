class HomeController < ApplicationController
  def index
    if user_signed_in?
      @worktime = current_user.last_worktime

    end
  end
end