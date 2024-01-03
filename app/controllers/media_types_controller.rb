class MediaTypesController < ApplicationController
  before_action :set_media_type, only: [:show, :edit, :update, :destroy]

  # GET /media_types
  # GET /media_types.json
  def index
    page_size = params[:page_size] || 10
    page_index = params[:page_index] || 1

    @media_types = MediaType.page(page_index).per(page_size)
  end

  # GET /media_types/1
  # GET /media_types/1.json
  def show
  end

  # GET /media_types/new
  def new
    @media_type = MediaType.new
  end

  # GET /media_types/1/edit
  def edit
  end

  # POST /media_types
  # POST /media_types.json
  def create
    @media_type = MediaType.new(media_type_params)

    respond_to do |format|
      if @media_type.save
        format.html { redirect_to @media_type, notice: 'Media type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @media_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_types/1
  # PATCH/PUT /media_types/1.json
  def update
    respond_to do |format|
      if @media_type.update(media_type_params)
        format.html { redirect_to @media_type, notice: 'Media type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @media_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_types/1
  # DELETE /media_types/1.json
  def destroy
    @media_type.destroy
    respond_to do |format|
      format.html { redirect_to media_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_type
      @media_type = MediaType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_type_params
      params.require(:media_type).permit(:invoice_id, :name)
    end
end
