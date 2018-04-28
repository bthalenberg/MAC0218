require 'test_helper'

class DespesasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @despesa = despesas(:one)
  end

  test "should get index" do
    get despesas_url
    assert_response :success
  end

  test "should get new" do
    get new_despesa_url
    assert_response :success
  end

  test "should create despesa" do
    assert_difference('Despesa.count') do
      post despesas_url, params: { despesa: { adiatamento_ferias: @despesa.adiatamento_ferias, ano: @despesa.ano, aposentados: @despesa.aposentados, ativo: @despesa.ativo, auxilio_alimentacao: @despesa.auxilio_alimentacao, decimo_terceiro: @despesa.decimo_terceiro, despesas_custeadas_receitas_vinculadas: @despesa.despesas_custeadas_receitas_vinculadas, folhas_avulsas: @despesa.folhas_avulsas, indenizacoes_pidv: @despesa.indenizacoes_pidv, outros_custeios_investimentos: @despesa.outros_custeios_investimentos, pasep: @despesa.pasep, precatorios: @despesa.precatorios, reservas_orcamentarias: @despesa.reservas_orcamentarias, terco_ferias: @despesa.terco_ferias, vale_refeicao: @despesa.vale_refeicao } }
    end

    assert_redirected_to despesa_url(Despesa.last)
  end

  test "should show despesa" do
    get despesa_url(@despesa)
    assert_response :success
  end

  test "should get edit" do
    get edit_despesa_url(@despesa)
    assert_response :success
  end

  test "should update despesa" do
    patch despesa_url(@despesa), params: { despesa: { adiatamento_ferias: @despesa.adiatamento_ferias, ano: @despesa.ano, aposentados: @despesa.aposentados, ativo: @despesa.ativo, auxilio_alimentacao: @despesa.auxilio_alimentacao, decimo_terceiro: @despesa.decimo_terceiro, despesas_custeadas_receitas_vinculadas: @despesa.despesas_custeadas_receitas_vinculadas, folhas_avulsas: @despesa.folhas_avulsas, indenizacoes_pidv: @despesa.indenizacoes_pidv, outros_custeios_investimentos: @despesa.outros_custeios_investimentos, pasep: @despesa.pasep, precatorios: @despesa.precatorios, reservas_orcamentarias: @despesa.reservas_orcamentarias, terco_ferias: @despesa.terco_ferias, vale_refeicao: @despesa.vale_refeicao } }
    assert_redirected_to despesa_url(@despesa)
  end

  test "should destroy despesa" do
    assert_difference('Despesa.count', -1) do
      delete despesa_url(@despesa)
    end

    assert_redirected_to despesas_url
  end
end
