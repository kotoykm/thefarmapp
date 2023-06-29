class MainfarmsController < ApplicationController
  before_action :set_mainfarm, only: %i[ show edit update destroy ]

  # GET /mainfarms or /mainfarms.json
  def index
    @mainfarms = Mainfarm.all
  end

  # GET /mainfarms/1 or /mainfarms/1.json
  def show
  end

  # GET /mainfarms/new
  def new
    @mainfarm = Mainfarm.new
    @mainfarm.farmers.build #Modificado para construir el formulario dentro la vista new
  end

  # GET /mainfarms/1/edit
  def edit
  end

  # POST /mainfarms or /mainfarms.json
  def create
    @mainfarm = Mainfarm.new(mainfarm_params)

    respond_to do |format|
      if @mainfarm.save
        format.html { redirect_to mainfarm_url(@mainfarm), notice: "Mainfarm was successfully created." }
        format.json { render :show, status: :created, location: @mainfarm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mainfarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainfarms/1 or /mainfarms/1.json
  def update
    respond_to do |format|
      if @mainfarm.update(mainfarm_params)
        format.html { redirect_to mainfarm_url(@mainfarm), notice: "Mainfarm was successfully updated." }
        format.json { render :show, status: :ok, location: @mainfarm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mainfarm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainfarms/1 or /mainfarms/1.json
  def destroy
    @mainfarm.destroy

    respond_to do |format|
      format.html { redirect_to mainfarms_url, notice: "Mainfarm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainfarm
      @mainfarm = Mainfarm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mainfarm_params
      params.require(:mainfarm).permit(:name, farmers_attributes: [:id, :name, :age, :_destroy]) #Modificado para aceptar los atributos de farmer y un checkbox destroy
    end
end
