require 'test_helper'

class OrcamentoNvInstitutosEspecializadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orcamento_nv_institutos_especializado = orcamento_nv_institutos_especializados(:one)
  end

  test "should get index" do
    get orcamento_nv_institutos_especializados_url
    assert_response :success
  end

  test "should get new" do
    get new_orcamento_nv_institutos_especializado_url
    assert_response :success
  end

  test "should create orcamento_nv_institutos_especializado" do
    assert_difference('OrcamentoNvInstitutosEspecializado.count') do
      post orcamento_nv_institutos_especializados_url, params: { orcamento_nv_institutos_especializado: { ano: @orcamento_nv_institutos_especializado.ano, categoria: @orcamento_nv_institutos_especializado.categoria, dotacao: @orcamento_nv_institutos_especializado.dotacao, outros_custeios_investimentos_dotacao_basica_adicionais: @orcamento_nv_institutos_especializado.outros_custeios_investimentos_dotacao_basica_adicionais, outros_custeios_investimentos_utilidade_publica: @orcamento_nv_institutos_especializado.outros_custeios_investimentos_utilidade_publica, pessoal_ativo: @orcamento_nv_institutos_especializado.pessoal_ativo, pessoal_inativo: @orcamento_nv_institutos_especializado.pessoal_inativo, unidade: @orcamento_nv_institutos_especializado.unidade } }
    end

    assert_redirected_to orcamento_nv_institutos_especializado_url(OrcamentoNvInstitutosEspecializado.last)
  end

  test "should show orcamento_nv_institutos_especializado" do
    get orcamento_nv_institutos_especializado_url(@orcamento_nv_institutos_especializado)
    assert_response :success
  end

  test "should get edit" do
    get edit_orcamento_nv_institutos_especializado_url(@orcamento_nv_institutos_especializado)
    assert_response :success
  end

  test "should update orcamento_nv_institutos_especializado" do
    patch orcamento_nv_institutos_especializado_url(@orcamento_nv_institutos_especializado), params: { orcamento_nv_institutos_especializado: { ano: @orcamento_nv_institutos_especializado.ano, categoria: @orcamento_nv_institutos_especializado.categoria, dotacao: @orcamento_nv_institutos_especializado.dotacao, outros_custeios_investimentos_dotacao_basica_adicionais: @orcamento_nv_institutos_especializado.outros_custeios_investimentos_dotacao_basica_adicionais, outros_custeios_investimentos_utilidade_publica: @orcamento_nv_institutos_especializado.outros_custeios_investimentos_utilidade_publica, pessoal_ativo: @orcamento_nv_institutos_especializado.pessoal_ativo, pessoal_inativo: @orcamento_nv_institutos_especializado.pessoal_inativo, unidade: @orcamento_nv_institutos_especializado.unidade } }
    assert_redirected_to orcamento_nv_institutos_especializado_url(@orcamento_nv_institutos_especializado)
  end

  test "should destroy orcamento_nv_institutos_especializado" do
    assert_difference('OrcamentoNvInstitutosEspecializado.count', -1) do
      delete orcamento_nv_institutos_especializado_url(@orcamento_nv_institutos_especializado)
    end

    assert_redirected_to orcamento_nv_institutos_especializados_url
  end
end
