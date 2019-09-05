require 'test_helper'

class EntradaSalidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entrada_salida = entrada_salidas(:one)
  end

  test "should get index" do
    get entrada_salidas_url, as: :json
    assert_response :success
  end

  test "should create entrada_salida" do
    assert_difference('EntradaSalida.count') do
      post entrada_salidas_url, params: { entrada_salida: { datetime: @entrada_salida.datetime, user_id: @entrada_salida.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show entrada_salida" do
    get entrada_salida_url(@entrada_salida), as: :json
    assert_response :success
  end

  test "should update entrada_salida" do
    patch entrada_salida_url(@entrada_salida), params: { entrada_salida: { datetime: @entrada_salida.datetime, user_id: @entrada_salida.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy entrada_salida" do
    assert_difference('EntradaSalida.count', -1) do
      delete entrada_salida_url(@entrada_salida), as: :json
    end

    assert_response 204
  end
end
