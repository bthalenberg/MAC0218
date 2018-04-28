require 'test_helper'

class OrcamentoOrgaoApoiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orcamento_orgao_apoio = orcamento_orgao_apoios(:one)
  end

  test "should get index" do
    get orcamento_orgao_apoios_url
    assert_response :success
  end

  test "should get new" do
    get new_orcamento_orgao_apoio_url
    assert_response :success
  end

  test "should create orcamento_orgao_apoio" do
    assert_difference('OrcamentoOrgaoApoio.count') do
      post orcamento_orgao_apoios_url, params: { orcamento_orgao_apoio: { ano: @orcamento_orgao_apoio.ano, dotacao: @orcamento_orgao_apoio.dotacao, orgao_apoio: @orcamento_orgao_apoio.orgao_apoio, outros_custeios_investimentos_dotacao_basica_adicionais: @orcamento_orgao_apoio.outros_custeios_investimentos_dotacao_basica_adicionais, outros_custeios_investimentos_utilidade_publica: @orcamento_orgao_apoio.outros_custeios_investimentos_utilidade_publica, pessoal_ativo: @orcamento_orgao_apoio.pessoal_ativo, pessoal_inativo: @orcamento_orgao_apoio.pessoal_inativo } }
    end

    assert_redirected_to orcamento_orgao_apoio_url(OrcamentoOrgaoApoio.last)
  end

  test "should show orcamento_orgao_apoio" do
    get orcamento_orgao_apoio_url(@orcamento_orgao_apoio)
    assert_response :success
  end

  test "should get edit" do
    get edit_orcamento_orgao_apoio_url(@orcamento_orgao_apoio)
    assert_response :success
  end

  test "should update orcamento_orgao_apoio" do
    patch orcamento_orgao_apoio_url(@orcamento_orgao_apoio), params: { orcamento_orgao_apoio: { ano: @orcamento_orgao_apoio.ano, dotacao: @orcamento_orgao_apoio.dotacao, orgao_apoio: @orcamento_orgao_apoio.orgao_apoio, outros_custeios_investimentos_dotacao_basica_adicionais: @orcamento_orgao_apoio.outros_custeios_investimentos_dotacao_basica_adicionais, outros_custeios_investimentos_utilidade_publica: @orcamento_orgao_apoio.outros_custeios_investimentos_utilidade_publica, pessoal_ativo: @orcamento_orgao_apoio.pessoal_ativo, pessoal_inativo: @orcamento_orgao_apoio.pessoal_inativo } }
    assert_redirected_to orcamento_orgao_apoio_url(@orcamento_orgao_apoio)
  end

  test "should destroy orcamento_orgao_apoio" do
    assert_difference('OrcamentoOrgaoApoio.count', -1) do
      delete orcamento_orgao_apoio_url(@orcamento_orgao_apoio)
    end

    assert_redirected_to orcamento_orgao_apoios_url
  end
end
