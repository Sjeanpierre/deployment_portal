class AddMessageToDeployments < ActiveRecord::Migration
  def change
    add_column :deployments, :message, :text
  end
end
