class OrdenesController < ApplicationController
  before_action :set_orden, only: %i[ show edit update destroy ]

  # GET /ordenes or /ordenes.json
  def index
    @ordenes = Orden.all
  end

  # GET /ordenes/1 or /ordenes/1.json
  def show
  end

  # GET /ordenes/new
  def new
    @orden = Orden.new
  end

  # GET /ordenes/1/edit
  def edit
  end

  # POST /ordenes or /ordenes.json
  def create
    @orden = Orden.new(orden_params)

    respond_to do |format|
      if @orden.save
        format.html { redirect_to orden_url(@orden), notice: "Orden was successfully created." }
        format.json { render :show, status: :created, location: @orden }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordenes/1 or /ordenes/1.json
  def update
    respond_to do |format|
      if @orden.update(orden_params)
        format.html { redirect_to orden_url(@orden), notice: "Orden was successfully updated." }
        format.json { render :show, status: :ok, location: @orden }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @orden.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordenes/1 or /ordenes/1.json
  def destroy
    @orden.destroy

    respond_to do |format|
      format.html { redirect_to ordenes_url, notice: "Orden was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orden
      @orden = Orden.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orden_params
      params.require(:orden).permit(:producto_id, :cliente_id, :tipoPago_id, :monto_total)
    end
end
