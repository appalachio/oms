class OrganizationsController < ApplicationController
  before_action :set_organization, only: %i[ show edit update archive restore destroy ]

  # GET /organizations or /organizations.json
  def index
    authenticate_user!

    # Only load organizations that have not been archived
    @organizations = Organization.active.page(params[:page])
  end

  # GET /organizations/1 or /organizations/1.json
  def show
    # Redirect to the latest version of the organization url if an old version was used
    if request.path != organization_path(@organization)
      redirect_to(@organization, status: :moved_permanently)
    end
  end

  # GET /organizations/new
  def new
    authenticate_user!

    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
    authenticate_user!

    # Redirect to the latest version of the organization url if an old version was used
    if request.path != edit_organization_path(@organization)
      redirect_to(edit_organization_path(@organization), status: :moved_permanently)
    end
  end

  # POST /organizations or /organizations.json
  def create
    authenticate_user!

    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save
        format.html { redirect_to @organization, notice: "Organization was successfully created." }
        format.json { render :show, status: :created, location: @organization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organizations/1 or /organizations/1.json
  def update
    authenticate_user!

    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: "Organization was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organizations/1/archive or /organizations/1/archive.json
  # Soft deletes the organization
  def archive
    authenticate_user!

    @organization.archive

    respond_to do |format|
      format.html { redirect_to @organization, notice: "Organization was successfully archived. You can restore it at any time." }
      format.json { render :show, status: :ok, location: @organization }
    end
  end

  # PUT /organizations/1/restore or /organizations/1/restore.json
  # Restores (un-soft deletes) the organization
  def restore
    authenticate_user!

    @organization.restore

    respond_to do |format|
      format.html { redirect_to @organization, notice: "Organization was successfully restored." }
      format.json { render :show, status: :ok, location: @organization }
    end
  end

  # DELETE /organizations/1 or /organizations/1.json
  def destroy
    authenticate_user!

    @organization.destroy!

    respond_to do |format|
      format.html { redirect_to organizations_path, notice: "Organization was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.friendly.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def organization_params
      params.expect(organization: [ :name, :about, :subdomain, :logo ])
    end
end
