class UppiesController < ApplicationController
  before_action :set_uppy, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ show edit update create destroy index new ]

  # GET /uppies or /uppies.json
  def index
    @uppies = Uppy.all
    @uppy = Uppy.new
  end

  # GET /uppies/1 or /uppies/1.json
  def show
  end

  # GET /uppies/new
  def new
    @uppy = Uppy.new
  end

  # GET /uppies/1/edit
  def edit
  end

  # POST /uppies or /uppies.json
  def create
    @uppy = Uppy.new(uppy_params)

    respond_to do |format|
      if @uppy.save
        format.html { redirect_to root_path, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @uppy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @uppy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uppies/1 or /uppies/1.json
  def update
    respond_to do |format|
      if @uppy.update(uppy_params)
        format.html { redirect_to uppy_url(@uppy), notice: "Uppy was successfully updated." }
        format.json { render :show, status: :ok, location: @uppy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @uppy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uppies/1 or /uppies/1.json
  def destroy
    @uppy.destroy

    respond_to do |format|
      format.html { redirect_to uppies_url, notice: "Uppy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uppy
      @uppy = Uppy.find(params[:id])
    end
    def set_user 
      @current_user = current_user
    end
    # Only allow a list of trusted parameters through.
    def uppy_params
      params.require(:uppy).permit(:body, :wallpaper).merge(user: current_user)
    end
end
