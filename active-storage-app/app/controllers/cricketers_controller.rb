class CricketersController < ApplicationController
  before_action :set_cricketer, only: %i[ show edit update destroy ]

  # GET /cricketers or /cricketers.json
  def index
    @cricketers = Cricketer.all
  end

  # GET /cricketers/1 or /cricketers/1.json
  def show
  end

  # GET /cricketers/new
  def new
    @cricketer = Cricketer.new
  end

  # GET /cricketers/1/edit
  def edit
  end

  # POST /cricketers or /cricketers.json
  def create
    @cricketer = Cricketer.new(cricketer_params)

    respond_to do |format|
      if @cricketer.save
        format.html { redirect_to cricketer_url(@cricketer), notice: "Cricketer was successfully created." }
        format.json { render :show, status: :created, location: @cricketer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cricketer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cricketers/1 or /cricketers/1.json
  def update
    respond_to do |format|
      if @cricketer.update(cricketer_params)
        format.html { redirect_to cricketer_url(@cricketer), notice: "Cricketer was successfully updated." }
        format.json { render :show, status: :ok, location: @cricketer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cricketer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cricketers/1 or /cricketers/1.json
  def destroy
    @cricketer.destroy!

    respond_to do |format|
      format.html { redirect_to cricketers_url, notice: "Cricketer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cricketer
      @cricketer = Cricketer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cricketer_params
      params.require(:cricketer).permit(:name, :image, :body, pictures:[])
    end
end
