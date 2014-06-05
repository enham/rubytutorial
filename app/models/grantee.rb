class Grantee < ActiveRecord::Base
  attr_accessible :address, :grant_amount, :grant_date, :name
  has_many :citizenship_classes, :dependent => :destroy
  accepts_nested_attributes_for :citizenship_classes
end
