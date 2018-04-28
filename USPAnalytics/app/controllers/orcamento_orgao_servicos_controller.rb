class OrcamentoOrgaoServicosController < ApplicationController
  before_action :set_orcamento_orgao_servico, only: [:show, :edit, :update, :destroy]

  # GET /orcamento_orgao_servicos
  # GET /orcamento_orgao_servicos.json
  def index
    @orcamento_orgao_servicos = OrcamentoOrgaoServico.all
  end

  # GET /orcamento_orgao_servicos/1
  # GET /orcamento_orgao_servicos/1.json
  def show
  end

  # GET /orcamento_orgao_servicos/new
  def new
    @orcamento_orgao_servico = OrcamentoOrgaoServico.new
  end

  # GET /orcamento_orgao_servicos/1/edit
  def edit
  end

  # POST /orcamento_orgao_servicos
  # POST /orcamento_orgao_servicos.json
  def create
    @orcamento_orgao_servico = OrcamentoOrgaoServico.new(orcamento_orgao_servico_params)

    respond_to do |format|
      if @orcamento_orgao_servico.save
        format.html { redirect_to @orcamento_orgao_servico, notice: 'Orcamento orgao servico was successfully created.' }
        format.json { render :show, status: :created, location: @orcamento_orgao_servico }
      else
        format.html { render :new }
        format.json { render json: @orcamento_orgao_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orcamento_orgao_servicos/1
  # PATCH/PUT /orcamento_orgao_servicos/1.json
  def update
    respond_to do |format|
      if @orcamento_orgao_servico.update(orcamento_orgao_servico_params)
        format.html { redirect_to @orcamento_orgao_servico, notice: 'Orcamento orgao servico was successfully updated.' }
        format.json { render :show, status: :ok, location: @orcamento_orgao_servico }
      else
        format.html { render :edit }
        format.json { render json: @orcamento_orgao_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamento_orgao_servicos/1
  # DELETE /orcamento_orgao_servicos/1.json
  def destroy
    @orcamento_orgao_servico.destroy
    respond_to do |format|
      format.html { redirect_to orcamento_orgao_servicos_url, notice: 'Orcamento orgao servico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orcamento_orgao_servico
      @orcamento_orgao_servico = OrcamentoOrgaoServico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orcamento_orgao_servico_params
      params.require(:orcamento_orgao_servico).permit(:orgao_servico, :pessoal_ativo, :pessoal_inativo, :dotacao, :outros_custeios_investimentos_dotacao_basica_adicionais, :outros_custeios_investimentos_utilidade_publica, :ano)
    end
end
