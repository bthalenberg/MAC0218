class DespesaDetalhesController < ApplicationController
  before_action :set_despesa_detalhe, only: [:show, :edit, :update, :destroy]

  # GET /despesa_detalhes
  # GET /despesa_detalhes.json
  def index
    @despesa_detalhes = DespesaDetalhe.all
  end

  # GET /despesa_detalhes/1
  # GET /despesa_detalhes/1.json
  def show
  end

  # GET /despesa_detalhes/new
  def new
    @despesa_detalhe = DespesaDetalhe.new
  end

  # GET /despesa_detalhes/1/edit
  def edit
  end

  # POST /despesa_detalhes
  # POST /despesa_detalhes.json
  def create
    @despesa_detalhe = DespesaDetalhe.new(despesa_detalhe_params)

    respond_to do |format|
      if @despesa_detalhe.save
        format.html { redirect_to @despesa_detalhe, notice: 'Despesa detalhe was successfully created.' }
        format.json { render :show, status: :created, location: @despesa_detalhe }
      else
        format.html { render :new }
        format.json { render json: @despesa_detalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /despesa_detalhes/1
  # PATCH/PUT /despesa_detalhes/1.json
  def update
    respond_to do |format|
      if @despesa_detalhe.update(despesa_detalhe_params)
        format.html { redirect_to @despesa_detalhe, notice: 'Despesa detalhe was successfully updated.' }
        format.json { render :show, status: :ok, location: @despesa_detalhe }
      else
        format.html { render :edit }
        format.json { render json: @despesa_detalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /despesa_detalhes/1
  # DELETE /despesa_detalhes/1.json
  def destroy
    @despesa_detalhe.destroy
    respond_to do |format|
      format.html { redirect_to despesa_detalhes_url, notice: 'Despesa detalhe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_despesa_detalhe
      @despesa_detalhe = DespesaDetalhe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def despesa_detalhe_params
      params.require(:despesa_detalhe).permit(:alinea, :grupo, :proposta_orcamentaria, :participacao, :ano)
    end
end
