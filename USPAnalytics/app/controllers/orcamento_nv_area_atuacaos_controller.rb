class OrcamentoNvAreaAtuacaosController < ApplicationController
  before_action :set_orcamento_nv_area_atuacao, only: [:show, :edit, :update, :destroy]

  # GET /orcamento_nv_area_atuacaos
  # GET /orcamento_nv_area_atuacaos.json
  def index
    @orcamento_nv_area_atuacaos = OrcamentoNvAreaAtuacao.all
  end

  # GET /orcamento_nv_area_atuacaos/1
  # GET /orcamento_nv_area_atuacaos/1.json
  def show
  end

  # GET /orcamento_nv_area_atuacaos/new
  def new
    @orcamento_nv_area_atuacao = OrcamentoNvAreaAtuacao.new
  end

  # GET /orcamento_nv_area_atuacaos/1/edit
  def edit
  end

  # POST /orcamento_nv_area_atuacaos
  # POST /orcamento_nv_area_atuacaos.json
  def create
    @orcamento_nv_area_atuacao = OrcamentoNvAreaAtuacao.new(orcamento_nv_area_atuacao_params)

    respond_to do |format|
      if @orcamento_nv_area_atuacao.save
        format.html { redirect_to @orcamento_nv_area_atuacao, notice: 'Orcamento nv area atuacao was successfully created.' }
        format.json { render :show, status: :created, location: @orcamento_nv_area_atuacao }
      else
        format.html { render :new }
        format.json { render json: @orcamento_nv_area_atuacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orcamento_nv_area_atuacaos/1
  # PATCH/PUT /orcamento_nv_area_atuacaos/1.json
  def update
    respond_to do |format|
      if @orcamento_nv_area_atuacao.update(orcamento_nv_area_atuacao_params)
        format.html { redirect_to @orcamento_nv_area_atuacao, notice: 'Orcamento nv area atuacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @orcamento_nv_area_atuacao }
      else
        format.html { render :edit }
        format.json { render json: @orcamento_nv_area_atuacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamento_nv_area_atuacaos/1
  # DELETE /orcamento_nv_area_atuacaos/1.json
  def destroy
    @orcamento_nv_area_atuacao.destroy
    respond_to do |format|
      format.html { redirect_to orcamento_nv_area_atuacaos_url, notice: 'Orcamento nv area atuacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orcamento_nv_area_atuacao
      @orcamento_nv_area_atuacao = OrcamentoNvAreaAtuacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orcamento_nv_area_atuacao_params
      params.require(:orcamento_nv_area_atuacao).permit(:area_item, :pessoal_ativo, :pessoal_inativo, :precatorio, :outros_custeios_investimentos, :reservas_orcamentarias, :proporcao, :ano)
    end
end
