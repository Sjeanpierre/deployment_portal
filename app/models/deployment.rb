class Deployment < ActiveRecord::Base
  attr_accessible :created_at, :deployment_profile_id, :sha, :tag

  has_one :deployment_configuration

  validates :deployment_profile_id, :presence => true
  validates :sha, :presence => true

end
