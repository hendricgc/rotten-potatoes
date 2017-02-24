require 'test_helper'

class FilmesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filme = filmes(:one)
  end

  test "entrar na pagina inicial" do
    get filmes_url
    assert_response :success
  end

  test "entrar na pagina novo filme" do
    get new_filme_url
    assert_response :success
  end

  test "criar filne" do
    assert_difference('Filme.count') do
      post filmes_url, params: { filme: { classificacao: @filme.classificacao, lancamento: @filme.lancamento, sinopse: @filme.sinopse, titulo: @filme.titulo } }
    end

    assert_redirected_to filme_url(Filme.last)
  end

  test "mostrar filme" do
    get filme_url(@filme)
    assert_response :success
  end

  test "editar filme" do
    get edit_filme_url(@filme)
    assert_response :success
  end

  test "atualizar filme" do
    patch filme_url(@filme), params: { filme: { classificacao: @filme.classificacao, lancamento: @filme.lancamento, sinopse: @filme.sinopse, titulo: @filme.titulo } }
    assert_redirected_to filme_url(@filme)
  end

  test "should destroy filme" do
    assert_difference('Filme.count', -1) do
      delete filme_url(@filme)
    end

    assert_redirected_to filmes_url
  end
end
