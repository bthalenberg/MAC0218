require 'test_helper'

class OrcamentoNvAreaAtuacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orcamento_nv_area_atuacao = orcamento_nv_area_atuacaos(:one)
  end

  test "should get index" do
    get orcamento_nv_area_atuacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_orcamento_nv_area_atuacao_url
    assert_response :success
  end

  test "should create orcamento_nv_area_atuacao" do
    assert_difference('OrcamentoNvAreaAtuacao.count') do
      post orcamento_nv_area_atuacaos_url, params: { orcamento_nv_area_atuacao: { ano: @orcamento_nv_area_atuacao.ano, area_item: @orcamento_nv_area_atuacao.area_item, outros_custeios_investimentos: @orcamento_nv_area_atuacao.outros_custeios_investimentos, pessoal_ativo: @orcamento_nv_area_atuacao.pessoal_ativo, pessoal_inativo: @orcamento_nv_area_atuacao.pessoal_inativo, precatorio: @orcamento_nv_area_atuacao.precatorio, proporcao: @orcamento_nv_area_atuacao.proporcao, reservas_orcamentarias: @orcamento_nv_area_atuacao.reservas_orcamentarias } }
    end

    assert_redirected_to orcamento_nv_area_atuacao_url(OrcamentoNvAreaAtuacao.last)
  end

  test "should show orcamento_nv_area_atuacao" do
    get orcamento_nv_area_atuacao_url(@orcamento_nv_area_atuacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_orcamento_nv_area_atuacao_url(@orcamento_nv_area_atuacao)
    assert_response :success
  end

  test "should update orcamento_nv_area_atuacao" do
    patch orcamento_nv_area_atuacao_url(@orcamento_nv_area_atuacao), params: { orcamento_nv_area_atuacao: { ano: @orcamento_nv_area_atuacao.ano, area_item: @orcamento_nv_area_atuacao.area_item, outros_custeios_investimentos: @orcamento_nv_area_atuacao.outros_custeios_investimentos, pessoal_ativo: @orcamento_nv_area_atuacao.pessoal_ativo, pessoal_inativo: @orcamento_nv_area_atuacao.pessoal_inativo, precatorio: @orcamento_nv_area_atuacao.precatorio, proporcao: @orcamento_nv_area_atuacao.proporcao, reservas_orcamentarias: @orcamento_nv_area_atuacao.reservas_orcamentarias } }
    assert_redirected_to orcamento_nv_area_atuacao_url(@orcamento_nv_area_atuacao)
  end

  test "should destroy orcamento_nv_area_atuacao" do
    assert_difference('OrcamentoNvAreaAtuacao.count', -1) do
      delete orcamento_nv_area_atuacao_url(@orcamento_nv_area_atuacao)
    end

    assert_redirected_to orcamento_nv_area_atuacaos_url
  end
end
