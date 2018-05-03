class HomeController < ApplicationController
  def index
    if user_signed_in?
      @worktime = Worktime.find_by(user_id: current_user.id)
    end
  end
end