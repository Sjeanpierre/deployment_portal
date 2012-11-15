require 'test_helper'

class DeploymentConfigurationsControllerTest < ActionController::TestCase
  setup do
    @deployment_configuration = deployment_configurations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deployment_configurations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deployment_configuration" do
    assert_difference('DeploymentConfiguration.count') do
      post :create, deployment_configuration: { created_at: @deployment_configuration.created_at, deployment_profile_id: @deployment_configuration.deployment_profile_id, git_org: @deployment_configuration.git_org, git_repo_name: @deployment_configuration.git_repo_name, rightscale_account_id: @deployment_configuration.rightscale_account_id, rightscale_array_id: @deployment_configuration.rightscale_array_id, tag_prefix: @deployment_configuration.tag_prefix }
    end

    assert_redirected_to deployment_configuration_path(assigns(:deployment_configuration))
  end

  test "should show deployment_configuration" do
    get :show, id: @deployment_configuration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deployment_configuration
    assert_response :success
  end

  test "should update deployment_configuration" do
    put :update, id: @deployment_configuration, deployment_configuration: { created_at: @deployment_configuration.created_at, deployment_profile_id: @deployment_configuration.deployment_profile_id, git_org: @deployment_configuration.git_org, git_repo_name: @deployment_configuration.git_repo_name, rightscale_account_id: @deployment_configuration.rightscale_account_id, rightscale_array_id: @deployment_configuration.rightscale_array_id, tag_prefix: @deployment_configuration.tag_prefix }
    assert_redirected_to deployment_configuration_path(assigns(:deployment_configuration))
  end

  test "should destroy deployment_configuration" do
    assert_difference('DeploymentConfiguration.count', -1) do
      delete :destroy, id: @deployment_configuration
    end

    assert_redirected_to deployment_configurations_path
  end
end
