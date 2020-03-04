class ReportsController < ApplicationController
  def index
    @reports = Report.limit(10).order('created_at DESC')
    @notifications = Notification.all
    @companies = Company.all
  end

  def new
    @report = Report.new
    @companies = Company.all
    @notifications = Notification.all
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to reports_path
    else
      render 'reports/new'
    end
  end

  def show
    @report = Report.find(params[:id])
    @notification = Notification.all
    @company = Company.all
  end

  def edit
  end

  def verification
  end

private

  def report_params
    params.require(:report).permit(
      :work_site,
      :work_content,
      :leader,
      :safety_goals,
      :ky,
      :measures,
      :sign,
      :workers,
      :notification_id,
      :company_id
    ).merge(user_id: current_user.id)
  end

  # def set_notification
  #   @notifications = Notification.all
  # end
end