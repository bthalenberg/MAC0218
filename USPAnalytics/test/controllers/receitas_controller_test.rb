require 'test_helper'

class ReceitasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receita = receitas(:one)
  end

  test "should get index" do
    get receitas_url
    assert_response :success
  end

  test "should get new" do
    get new_receita_url
    assert_response :success
  end

  test "should create receita" do
    assert_difference('Receita.count') do
      post receitas_url, params: { receita: { ano: @receita.ano, outras_receitas: @receita.outras_receitas, receita_propria_nao_vinculada: @receita.receita_propria_nao_vinculada, receita_tesouro_estado: @receita.receita_tesouro_estado, receitas_vinculadas: @receita.receitas_vinculadas, reembolsos: @receita.reembolsos, rendimento_aplicacoes: @receita.rendimento_aplicacoes } }
    end

    assert_redirected_to receita_url(Receita.last)
  end

  test "should show receita" do
    get receita_url(@receita)
    assert_response :success
  end

  test "should get edit" do
    get edit_receita_url(@receita)
    assert_response :success
  end

  test "should update receita" do
    patch receita_url(@receita), params: { receita: { ano: @receita.ano, outras_receitas: @receita.outras_receitas, receita_propria_nao_vinculada: @receita.receita_propria_nao_vinculada, receita_tesouro_estado: @receita.receita_tesouro_estado, receitas_vinculadas: @receita.receitas_vinculadas, reembolsos: @receita.reembolsos, rendimento_aplicacoes: @receita.rendimento_aplicacoes } }
    assert_redirected_to receita_url(@receita)
  end

  test "should destroy receita" do
    assert_difference('Receita.count', -1) do
      delete receita_url(@receita)
    end

    assert_redirected_to receitas_url
  end
end
