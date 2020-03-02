class AddCompanyIdToReports < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :notification_id, :integer
    add_column :reports, :company_id, :integer
  end
end
