class Deployment < ActiveRecord::Base
  attr_accessible :created_at, :deployment_profile_id, :sha

  has_one :deployment_configuration


end
