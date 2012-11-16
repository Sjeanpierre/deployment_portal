class DeploymentConfiguration < ActiveRecord::Base
  attr_accessible :created_at, :deployment_profile_id, :git_org, :git_repo_name, :rightscale_account_id, :rightscale_array_id, :tag_prefix

  belongs_to :deployment

  validates :deployment_profile_id, :presence => true
  validates :git_org, :presence => true
  validates :git_repo_name, :presence => true
  validates :rightscale_account_id, :presence => true
  validates :rightscale_array_id, :presence => true
  validates :tag_prefix, :presence => true

end
