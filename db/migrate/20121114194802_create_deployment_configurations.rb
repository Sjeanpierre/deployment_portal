class CreateDeploymentConfigurations < ActiveRecord::Migration
  def change
    create_table :deployment_configurations do |t|
      t.string :tag_prefix
      t.string :deployment_profile_id
      t.string :git_repo_name
      t.string :git_org
      t.string :rightscale_array_id
      t.string :rightscale_account_id
      t.timestamp :created_at

      t.timestamps
    end
  end
end
