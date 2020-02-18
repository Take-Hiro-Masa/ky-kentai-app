class Notification < ApplicationRecord
  has_many :company
  has_many :report
end
