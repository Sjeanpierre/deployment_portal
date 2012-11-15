class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :name
      t.string :api_key
      t.timestamp :created_at

      t.timestamps
    end
  end
end
