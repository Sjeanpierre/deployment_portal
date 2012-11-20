class Notification < ActiveRecord::Base
  attr_accessible :name, :email
  has_and_belongs_to_many :deployment_configurations
end
