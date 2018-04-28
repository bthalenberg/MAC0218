require 'test_helper'

class DespesaDetalhesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @despesa_detalhe = despesa_detalhes(:one)
  end

  test "should get index" do
    get despesa_detalhes_url
    assert_response :success
  end

  test "should get new" do
    get new_despesa_detalhe_url
    assert_response :success
  end

  test "should create despesa_detalhe" do
    assert_difference('DespesaDetalhe.count') do
      post despesa_detalhes_url, params: { despesa_detalhe: { alinea: @despesa_detalhe.alinea, ano: @despesa_detalhe.ano, grupo: @despesa_detalhe.grupo, participacao: @despesa_detalhe.participacao, proposta_orcamentaria: @despesa_detalhe.proposta_orcamentaria } }
    end

    assert_redirected_to despesa_detalhe_url(DespesaDetalhe.last)
  end

  test "should show despesa_detalhe" do
    get despesa_detalhe_url(@despesa_detalhe)
    assert_response :success
  end

  test "should get edit" do
    get edit_despesa_detalhe_url(@despesa_detalhe)
    assert_response :success
  end

  test "should update despesa_detalhe" do
    patch despesa_detalhe_url(@despesa_detalhe), params: { despesa_detalhe: { alinea: @despesa_detalhe.alinea, ano: @despesa_detalhe.ano, grupo: @despesa_detalhe.grupo, participacao: @despesa_detalhe.participacao, proposta_orcamentaria: @despesa_detalhe.proposta_orcamentaria } }
    assert_redirected_to despesa_detalhe_url(@despesa_detalhe)
  end

  test "should destroy despesa_detalhe" do
    assert_difference('DespesaDetalhe.count', -1) do
      delete despesa_detalhe_url(@despesa_detalhe)
    end

    assert_redirected_to despesa_detalhes_url
  end
end
