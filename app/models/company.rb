class Company < ApplicationRecord
  has_many :users
  has_many :reports
  belongs_to :notification, optional: true

end
