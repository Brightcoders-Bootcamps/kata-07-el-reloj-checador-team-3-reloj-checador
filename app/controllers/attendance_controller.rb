class AttendanceController < ApplicationController
  def index
    @dates = Report.all.pluck("distinct date(created_at)")
    if params[:date]
      @filtered_reports = Report.where(created_at: params[:date]&.to_datetime&.beginning_of_day..params[:date]&.to_datetime&.end_of_day)
    end
  end
end