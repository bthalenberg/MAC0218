class OrcamentoOrgaoApoiosController < ApplicationController
  before_action :set_orcamento_orgao_apoio, only: [:show, :edit, :update, :destroy]

  # GET /orcamento_orgao_apoios
  # GET /orcamento_orgao_apoios.json
  def index
    @orcamento_orgao_apoios = OrcamentoOrgaoApoio.all
  end

  # GET /orcamento_orgao_apoios/1
  # GET /orcamento_orgao_apoios/1.json
  def show
  end

  # GET /orcamento_orgao_apoios/new
  def new
    @orcamento_orgao_apoio = OrcamentoOrgaoApoio.new
  end

  # GET /orcamento_orgao_apoios/1/edit
  def edit
  end

  # POST /orcamento_orgao_apoios
  # POST /orcamento_orgao_apoios.json
  def create
    @orcamento_orgao_apoio = OrcamentoOrgaoApoio.new(orcamento_orgao_apoio_params)

    respond_to do |format|
      if @orcamento_orgao_apoio.save
        format.html { redirect_to @orcamento_orgao_apoio, notice: 'Orcamento orgao apoio was successfully created.' }
        format.json { render :show, status: :created, location: @orcamento_orgao_apoio }
      else
        format.html { render :new }
        format.json { render json: @orcamento_orgao_apoio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orcamento_orgao_apoios/1
  # PATCH/PUT /orcamento_orgao_apoios/1.json
  def update
    respond_to do |format|
      if @orcamento_orgao_apoio.update(orcamento_orgao_apoio_params)
        format.html { redirect_to @orcamento_orgao_apoio, notice: 'Orcamento orgao apoio was successfully updated.' }
        format.json { render :show, status: :ok, location: @orcamento_orgao_apoio }
      else
        format.html { render :edit }
        format.json { render json: @orcamento_orgao_apoio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamento_orgao_apoios/1
  # DELETE /orcamento_orgao_apoios/1.json
  def destroy
    @orcamento_orgao_apoio.destroy
    respond_to do |format|
      format.html { redirect_to orcamento_orgao_apoios_url, notice: 'Orcamento orgao apoio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orcamento_orgao_apoio
      @orcamento_orgao_apoio = OrcamentoOrgaoApoio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orcamento_orgao_apoio_params
      params.require(:orcamento_orgao_apoio).permit(:orgao_apoio, :pessoal_ativo, :pessoal_inativo, :dotacao, :outros_custeios_investimentos_dotacao_basica_adicionais, :outros_custeios_investimentos_utilidade_publica, :ano)
    end
end
