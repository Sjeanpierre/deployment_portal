class CreateDeployments < ActiveRecord::Migration
  def change
    create_table :deployments do |t|
      t.string :deployment_profile_id
      t.string :sha
      t.timestamp :created_at

      t.timestamps
    end
  end
end
