class Notification < ApplicationRecord
  has_many :companies
  has_many :reports
end
