class AddTagToDeployments < ActiveRecord::Migration
  def change
    add_column :deployments, :tag, :string
  end
end
