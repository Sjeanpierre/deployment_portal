class AddEmailToDeployments < ActiveRecord::Migration
  def change
    add_column :deployments, :email, :string
  end
end
