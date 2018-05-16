class RestTimesController < ApplicationController
  def create
    rest_time = RestTime.new(worktime_id: params[:worktime_id], start_time: Time.now)
    flash[:warning] = rest_time.errors.full_messages unless rest_time.save
    redirect_to :root

  end

  def update
    @rest_time = RestTime.find(params[:id])
    if @rest_time.update_attributes(rest_time_params)
      redirect_to :root, success: "休憩終了しました！"
    else
      redirect_to :root, danger: @rest_time.errors.full_messages
    end

  end

  private
  def rest_time_params
    params.require(:rest_times).permit(:end_time)
  end
end
