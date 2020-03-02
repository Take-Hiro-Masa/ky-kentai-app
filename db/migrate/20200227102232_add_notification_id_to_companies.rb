class AddNotificationIdToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :notification_id, :integer
  end
end
