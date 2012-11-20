class Deployment < ActiveRecord::Base
  attr_accessible :created_at, :deployment_configuration_id, :sha, :tag, :message
  attr_accessor :deployment_profile_id

  has_one :deployment_configuration

  validates :deployment_configuration_id, :presence => true
  validates :sha, :presence => true

  def deployment_profile_id
    @deployment_configuration = DeploymentConfiguration.find(deployment_configuration_id)
    deployment_profile_id = @deployment_configuration.deployment_profile_id
  end

end
