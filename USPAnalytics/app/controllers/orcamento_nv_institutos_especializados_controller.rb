class OrcamentoNvInstitutosEspecializadosController < ApplicationController
  before_action :set_orcamento_nv_institutos_especializado, only: [:show, :edit, :update, :destroy]

  # GET /orcamento_nv_institutos_especializados
  # GET /orcamento_nv_institutos_especializados.json
  def index
    @orcamento_nv_institutos_especializados = OrcamentoNvInstitutosEspecializado.all
  end

  # GET /orcamento_nv_institutos_especializados/1
  # GET /orcamento_nv_institutos_especializados/1.json
  def show
  end

  # GET /orcamento_nv_institutos_especializados/new
  def new
    @orcamento_nv_institutos_especializado = OrcamentoNvInstitutosEspecializado.new
  end

  # GET /orcamento_nv_institutos_especializados/1/edit
  def edit
  end

  # POST /orcamento_nv_institutos_especializados
  # POST /orcamento_nv_institutos_especializados.json
  def create
    @orcamento_nv_institutos_especializado = OrcamentoNvInstitutosEspecializado.new(orcamento_nv_institutos_especializado_params)

    respond_to do |format|
      if @orcamento_nv_institutos_especializado.save
        format.html { redirect_to @orcamento_nv_institutos_especializado, notice: 'Orcamento nv institutos especializado was successfully created.' }
        format.json { render :show, status: :created, location: @orcamento_nv_institutos_especializado }
      else
        format.html { render :new }
        format.json { render json: @orcamento_nv_institutos_especializado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orcamento_nv_institutos_especializados/1
  # PATCH/PUT /orcamento_nv_institutos_especializados/1.json
  def update
    respond_to do |format|
      if @orcamento_nv_institutos_especializado.update(orcamento_nv_institutos_especializado_params)
        format.html { redirect_to @orcamento_nv_institutos_especializado, notice: 'Orcamento nv institutos especializado was successfully updated.' }
        format.json { render :show, status: :ok, location: @orcamento_nv_institutos_especializado }
      else
        format.html { render :edit }
        format.json { render json: @orcamento_nv_institutos_especializado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcamento_nv_institutos_especializados/1
  # DELETE /orcamento_nv_institutos_especializados/1.json
  def destroy
    @orcamento_nv_institutos_especializado.destroy
    respond_to do |format|
      format.html { redirect_to orcamento_nv_institutos_especializados_url, notice: 'Orcamento nv institutos especializado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orcamento_nv_institutos_especializado
      @orcamento_nv_institutos_especializado = OrcamentoNvInstitutosEspecializado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orcamento_nv_institutos_especializado_params
      params.require(:orcamento_nv_institutos_especializado).permit(:unidade, :categoria, :pessoal_ativo, :pessoal_inativo, :dotacao, :outros_custeios_investimentos_dotacao_basica_adicionais, :outros_custeios_investimentos_utilidade_publica, :ano)
    end
end
