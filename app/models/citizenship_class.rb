class CitizenshipClass < ActiveRecord::Base
  belongs_to :grantee
  attr_accessible :delivery_date, :hours, :instructor, :name
end
