class OrcamentoNvUnidadeEnsinoPesquisasController < ApplicationController
  before_action :set_orcamento_nv_unidade_ensino_pesquisa, only: [:show, :edit, :update, :destroy]

  # GET /orcamento_nv_unidade_ensino_pesquisas
  # GET /orcamento_nv_unidade_ensino_pesquisas.json
  def index
    @orcamento_nv_unidade_ensino_pesquisas = OrcamentoNvUnidadeEnsinoPesquisa.all
  end

  # GET /orcamento_nv_unidade_ensino_pesquisas/1
  # GET /orcamento_nv_unidade_ensino_pesquisas/1.json
  def show
  end

  # GET /orcamento_nv_unidade_ensino_pesquisas/new
  def new
    @orcamento_nv_unidade_ensino_pesquisa = OrcamentoNvUnidadeEnsinoPesquisa.new
  end

  # GET /orcamento_nv_unidade_ensino_pesquisas/1/edit
  def edit
  end

  # POST /orcamento_nv_unidade_ensino_pesquisas
  # POST /orcamento_nv_unidade_ensino_pesquisas.json
  def create
    @orcamento_nv_unidade_ensino_pesquisa = OrcamentoNvUnidadeEnsinoPesquisa.new(orcamento_nv_unidade_ensino_pesquisa_params)

    respond_to do |format|
      if @orcamento_nv_unidade_ensino_pesquisa.save
        format.html { redirect_to @orcamento_nv_unidade_ensino_pesquisa, notice: 'Orcamento nv unidade ensino pesquisa was successfully created.' }
        format.json { render :show, status: :created, location: @orcamento_nv_unidade_ensino_pesquisa }
      else
        format.html { render :new }
        format.json { render json: @orcamento_nv_unidade_ensino_pesquisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orcamento_nv_unidade_ensino_pesquisas/1
  # PATCH/PUT /orcamento_nv_unidade_ensino_pesquisas/1.json
  def update
    respond_to do |format|
      if @orcamento_nv_unidade_ensino_pesquisa.update(orcamento_nv_unidade_ensino_pesquisa_params)
        format.html { redirect_to @orcamento_nv_unidade_ensino_pesquisa, notice: 'Orcamento nv unidade ensino pesquisa was successfully updated.' }
        format.json { render :show, status: :ok, location: @orcamento_nv_unidade_ensino_pesquisa }
      else
        format.html { render :edit }
        format.json { render json: @orcamento_nv_unidade_ensino_pesquisa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamento_nv_unidade_ensino_pesquisas/1
  # DELETE /orcamento_nv_unidade_ensino_pesquisas/1.json
  def destroy
    @orcamento_nv_unidade_ensino_pesquisa.destroy
    respond_to do |format|
      format.html { redirect_to orcamento_nv_unidade_ensino_pesquisas_url, notice: 'Orcamento nv unidade ensino pesquisa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orcamento_nv_unidade_ensino_pesquisa
      @orcamento_nv_unidade_ensino_pesquisa = OrcamentoNvUnidadeEnsinoPesquisa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orcamento_nv_unidade_ensino_pesquisa_params
      params.require(:orcamento_nv_unidade_ensino_pesquisa).permit(:unidade_ensino_pesquisa, :pessoal_ativo, :pessoal_inativo, :dotacao, :outros_custeios_investimentos_dotacao_basica_adicionais, :outros_custeios_investimentos_utilidade_publica, :ano)
    end
end
