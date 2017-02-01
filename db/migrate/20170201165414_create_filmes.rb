class CreateFilmes < ActiveRecord::Migration[5.0]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.integer :classificacao
      t.datetime :lancamento
      t.text :sinopse

      t.timestamps
    end
  end
end
