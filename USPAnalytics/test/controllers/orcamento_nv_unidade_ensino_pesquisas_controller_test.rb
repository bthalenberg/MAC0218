require 'test_helper'

class OrcamentoNvUnidadeEnsinoPesquisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orcamento_nv_unidade_ensino_pesquisa = orcamento_nv_unidade_ensino_pesquisas(:one)
  end

  test "should get index" do
    get orcamento_nv_unidade_ensino_pesquisas_url
    assert_response :success
  end

  test "should get new" do
    get new_orcamento_nv_unidade_ensino_pesquisa_url
    assert_response :success
  end

  test "should create orcamento_nv_unidade_ensino_pesquisa" do
    assert_difference('OrcamentoNvUnidadeEnsinoPesquisa.count') do
      post orcamento_nv_unidade_ensino_pesquisas_url, params: { orcamento_nv_unidade_ensino_pesquisa: { ano: @orcamento_nv_unidade_ensino_pesquisa.ano, dotacao: @orcamento_nv_unidade_ensino_pesquisa.dotacao, outros_custeios_investimentos_dotacao_basica_adicionais: @orcamento_nv_unidade_ensino_pesquisa.outros_custeios_investimentos_dotacao_basica_adicionais, outros_custeios_investimentos_utilidade_publica: @orcamento_nv_unidade_ensino_pesquisa.outros_custeios_investimentos_utilidade_publica, pessoal_ativo: @orcamento_nv_unidade_ensino_pesquisa.pessoal_ativo, pessoal_inativo: @orcamento_nv_unidade_ensino_pesquisa.pessoal_inativo, unidade_ensino_pesquisa: @orcamento_nv_unidade_ensino_pesquisa.unidade_ensino_pesquisa } }
    end

    assert_redirected_to orcamento_nv_unidade_ensino_pesquisa_url(OrcamentoNvUnidadeEnsinoPesquisa.last)
  end

  test "should show orcamento_nv_unidade_ensino_pesquisa" do
    get orcamento_nv_unidade_ensino_pesquisa_url(@orcamento_nv_unidade_ensino_pesquisa)
    assert_response :success
  end

  test "should get edit" do
    get edit_orcamento_nv_unidade_ensino_pesquisa_url(@orcamento_nv_unidade_ensino_pesquisa)
    assert_response :success
  end

  test "should update orcamento_nv_unidade_ensino_pesquisa" do
    patch orcamento_nv_unidade_ensino_pesquisa_url(@orcamento_nv_unidade_ensino_pesquisa), params: { orcamento_nv_unidade_ensino_pesquisa: { ano: @orcamento_nv_unidade_ensino_pesquisa.ano, dotacao: @orcamento_nv_unidade_ensino_pesquisa.dotacao, outros_custeios_investimentos_dotacao_basica_adicionais: @orcamento_nv_unidade_ensino_pesquisa.outros_custeios_investimentos_dotacao_basica_adicionais, outros_custeios_investimentos_utilidade_publica: @orcamento_nv_unidade_ensino_pesquisa.outros_custeios_investimentos_utilidade_publica, pessoal_ativo: @orcamento_nv_unidade_ensino_pesquisa.pessoal_ativo, pessoal_inativo: @orcamento_nv_unidade_ensino_pesquisa.pessoal_inativo, unidade_ensino_pesquisa: @orcamento_nv_unidade_ensino_pesquisa.unidade_ensino_pesquisa } }
    assert_redirected_to orcamento_nv_unidade_ensino_pesquisa_url(@orcamento_nv_unidade_ensino_pesquisa)
  end

  test "should destroy orcamento_nv_unidade_ensino_pesquisa" do
    assert_difference('OrcamentoNvUnidadeEnsinoPesquisa.count', -1) do
      delete orcamento_nv_unidade_ensino_pesquisa_url(@orcamento_nv_unidade_ensino_pesquisa)
    end

    assert_redirected_to orcamento_nv_unidade_ensino_pesquisas_url
  end
end
