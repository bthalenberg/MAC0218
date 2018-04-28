require 'test_helper'

class OrcamentoOrgaoServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orcamento_orgao_servico = orcamento_orgao_servicos(:one)
  end

  test "should get index" do
    get orcamento_orgao_servicos_url
    assert_response :success
  end

  test "should get new" do
    get new_orcamento_orgao_servico_url
    assert_response :success
  end

  test "should create orcamento_orgao_servico" do
    assert_difference('OrcamentoOrgaoServico.count') do
      post orcamento_orgao_servicos_url, params: { orcamento_orgao_servico: { ano: @orcamento_orgao_servico.ano, dotacao: @orcamento_orgao_servico.dotacao, orgao_servico: @orcamento_orgao_servico.orgao_servico, outros_custeios_investimentos_dotacao_basica_adicionais: @orcamento_orgao_servico.outros_custeios_investimentos_dotacao_basica_adicionais, outros_custeios_investimentos_utilidade_publica: @orcamento_orgao_servico.outros_custeios_investimentos_utilidade_publica, pessoal_ativo: @orcamento_orgao_servico.pessoal_ativo, pessoal_inativo: @orcamento_orgao_servico.pessoal_inativo } }
    end

    assert_redirected_to orcamento_orgao_servico_url(OrcamentoOrgaoServico.last)
  end

  test "should show orcamento_orgao_servico" do
    get orcamento_orgao_servico_url(@orcamento_orgao_servico)
    assert_response :success
  end

  test "should get edit" do
    get edit_orcamento_orgao_servico_url(@orcamento_orgao_servico)
    assert_response :success
  end

  test "should update orcamento_orgao_servico" do
    patch orcamento_orgao_servico_url(@orcamento_orgao_servico), params: { orcamento_orgao_servico: { ano: @orcamento_orgao_servico.ano, dotacao: @orcamento_orgao_servico.dotacao, orgao_servico: @orcamento_orgao_servico.orgao_servico, outros_custeios_investimentos_dotacao_basica_adicionais: @orcamento_orgao_servico.outros_custeios_investimentos_dotacao_basica_adicionais, outros_custeios_investimentos_utilidade_publica: @orcamento_orgao_servico.outros_custeios_investimentos_utilidade_publica, pessoal_ativo: @orcamento_orgao_servico.pessoal_ativo, pessoal_inativo: @orcamento_orgao_servico.pessoal_inativo } }
    assert_redirected_to orcamento_orgao_servico_url(@orcamento_orgao_servico)
  end

  test "should destroy orcamento_orgao_servico" do
    assert_difference('OrcamentoOrgaoServico.count', -1) do
      delete orcamento_orgao_servico_url(@orcamento_orgao_servico)
    end

    assert_redirected_to orcamento_orgao_servicos_url
  end
end
