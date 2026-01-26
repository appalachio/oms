class PagesController < ApplicationController
  before_action :set_page, only: %i[ show edit update archive restore destroy ]

  # GET /pages or /pages.json
  def index
    # Only load pages that have not been archived
    @pages = Page.order(published_at: :desc).active.page(params[:page])
  end

  # GET /pages/1 or /pages/1.json
  def show
    # Redirect to the latest version of the page url if an old version was used
    if request.path != page_path(@page)
      redirect_to(@page, status: :moved_permanently)
    end
  end

  # GET /pages/new
  def new
    authenticate_user!

    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
    authenticate_user!

    # Redirect to the latest version of the page url if an old version was used
    if request.path != edit_page_path(@page)
      redirect_to(edit_page_path(@page), status: :moved_permanently)
    end
  end

  # POST /pages or /pages.json
  def create
    authenticate_user!

    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1 or /pages/1.json
  def update
    authenticate_user!

    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: "Page was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1/archive or /pages/1/archive.json
  # Soft deletes the page
  def archive
    authenticate_user!

    @page.archive

    respond_to do |format|
      format.html { redirect_to @page, notice: "Page was successfully archived. You can restore it at any time." }
      format.json { render :show, status: :ok, location: @page }
    end
  end

  # PUT /pages/1/restore or /pages/1/restore.json
  # Restores (un-soft deletes) the page
  def restore
    authenticate_user!

    @page.restore

    respond_to do |format|
      format.html { redirect_to @page, notice: "Page was successfully restored." }
      format.json { render :show, status: :ok, location: @page }
    end
  end

  # DELETE /pages/1 or /pages/1.json
  # Permanently removes the page from the database
  def destroy
    authenticate_user!

    @page.destroy!

    respond_to do |format|
      format.html { redirect_to pages_path, notice: "Page was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.friendly.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def page_params
      params.expect(page: [ :title, :subtitle, :page_type, :body, :published_at, photos: [] ])
    end
end
