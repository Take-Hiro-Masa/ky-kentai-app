class Company < ApplicationRecord
  has_many :users
  has_one :report
  belongs_to :notifications

end
