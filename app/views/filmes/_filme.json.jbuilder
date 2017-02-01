json.extract! filme, :id, :titulo, :classificacao, :lancamento, :sinopse, :created_at, :updated_at
json.url filme_url(filme, format: :json)