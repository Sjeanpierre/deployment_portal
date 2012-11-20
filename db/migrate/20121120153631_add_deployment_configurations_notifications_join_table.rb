class AddDeploymentConfigurationsNotificationsJoinTable < ActiveRecord::Migration
  def up
    create_table :deployment_configurations_notifications, :id => false do |t|
      t.integer :deployment_configuration_id
      t.integer :notification_id
    end
  end

  def down
    drop_table :deployment_configurations_notifications
  end
end
