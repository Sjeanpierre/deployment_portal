require "rubygems"
require "RightScaleAPIHelper"
require 'base64'
require 'yaml'
require "github_api"

module DeploymentMethods

  $rs_username          = ENV['USERNAME']
  $rs_password          = ENV['PASSWORD']
  $rs_account_id        = ENV['ACCOUNT_ID']
  $github_oauth         = ENV['GITHUB_OAUTH']

  APP_CONFIG = YAML.load_file("config/config.yml")
  $rs_username          = APP_CONFIG['username']
  $rs_password          = APP_CONFIG['password']
  $rs_account_id        = APP_CONFIG['account_id']
  $github_oauth         = APP_CONFIG['github_oauth']

  begin
    def rs_client
      RightScaleAPIHelper::Helper.new($rs_account_id, Base64.decode64($rs_username), Base64.decode64($rs_password), format="js", version="1.0")
    end
  end

  def git_connect
    git = Github.new oauth_token: $github_oauth
    return git
  end

  def get_user
    $rs_username
  end


end