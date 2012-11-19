require "rubygems"
require "RightScaleAPIHelper"
require 'base64'
require 'yaml'
require "github_api"

module DeploymentMethods

  APP_CONFIG = YAML.load_file("config/config.yml")
  $rs_username          = APP_CONFIG['username']
  $rs_password          = APP_CONFIG['password']
  $rs_account_id        = APP_CONFIG['account_id']
  $github_oauth         = APP_CONFIG['github_oauth']

  def git
    @git = Github.new oauth_token: $github_oauth
    return @git
  end

  def rs_client
    RightScaleAPIHelper::Helper.new($rs_account_id, Base64.decode64($rs_username), Base64.decode64($rs_password), format="js", version="1.0")
  end

  ######################################################################################################################
  # Github operations

  def github_operations(deployment_configuration, deployment)
    #Find last highest tag and increment by one. return new tag
    deployment.tag = get_next_tag(deployment_configuration, deployment)

    #we need to tag the git repo associated with the sha
    tag_git_repo(deployment_configuration, deployment)
  end

  def get_next_tag(deployment_configuration, deployment)
    # get all tags for the repo
    all_tags = git.repos.tags "#{deployment_configuration.git_org}", "#{deployment_configuration.git_repo_name}"

    # get only tags with the format "${tag_prefix}.${number}"
    # and assume this is always so
    # TODO add error handling
    @prefix = deployment_configuration.tag_prefix + "."
    tag_list = Array.new
    all_tags.each{|item| tag_list.push(item[:name].sub!(@prefix,'').to_i) if item[:name].start_with?(@prefix)}

    # sort tags desc
    tag_list.sort!{|x,y| y <=> x }

    # get highest tag value and increment by 1
    @prefix + tag_list[0].next.to_s

  end

  def tag_git_repo(deployment_configuration, deployment)
    begin
      repo_tag_info = git.git_data.references.create deployment_configuration.git_org,
                                                     deployment_configuration.git_repo_name,
                                                     "ref" => "refs/tags/#{deployment.tag}",
                                                     "sha" =>  "#{deployment.sha}"
    rescue
      throw :unprocessable_entity
    end
  end

  ######################################################################################################################
  # RightScale operations

  def rightscale_operations(deployment_configuration, deployment)
    #we need to push that tag to the Rightscale server array

    #we need to launch the server, will need param for the amount of servers that need to be launched
  end


end