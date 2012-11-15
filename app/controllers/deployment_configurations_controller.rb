class DeploymentConfigurationsController < ApplicationController
  # GET /deployment_configurations
  # GET /deployment_configurations.json
  def index
    @deployment_configurations = DeploymentConfiguration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deployment_configurations }
    end
  end

  # GET /deployment_configurations/1
  # GET /deployment_configurations/1.json
  def show
    @deployment_configuration = DeploymentConfiguration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deployment_configuration }
    end
  end

  # GET /deployment_configurations/new
  # GET /deployment_configurations/new.json
  def new
    @deployment_configuration = DeploymentConfiguration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deployment_configuration }
    end
  end

  # GET /deployment_configurations/1/edit
  def edit
    @deployment_configuration = DeploymentConfiguration.find(params[:id])
  end

  # POST /deployment_configurations
  # POST /deployment_configurations.json
  def create
    @deployment_configuration = DeploymentConfiguration.new(params[:deployment_configuration])

    respond_to do |format|
      if @deployment_configuration.save
        format.html { redirect_to @deployment_configuration, notice: 'Deployment configuration was successfully created.' }
        format.json { render json: @deployment_configuration, status: :created, location: @deployment_configuration }
      else
        format.html { render action: "new" }
        format.json { render json: @deployment_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deployment_configurations/1
  # PUT /deployment_configurations/1.json
  def update
    @deployment_configuration = DeploymentConfiguration.find(params[:id])

    respond_to do |format|
      if @deployment_configuration.update_attributes(params[:deployment_configuration])
        format.html { redirect_to @deployment_configuration, notice: 'Deployment configuration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @deployment_configuration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deployment_configurations/1
  # DELETE /deployment_configurations/1.json
  def destroy
    @deployment_configuration = DeploymentConfiguration.find(params[:id])
    @deployment_configuration.destroy

    respond_to do |format|
      format.html { redirect_to deployment_configurations_url }
      format.json { head :no_content }
    end
  end
end
