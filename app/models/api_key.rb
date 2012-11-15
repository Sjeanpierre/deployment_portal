class ApiKey < ActiveRecord::Base
  attr_accessible :api_key, :created_at, :name
end
