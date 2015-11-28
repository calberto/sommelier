class CreateVinhos < ActiveRecord::Migration
  def change
    create_table :vinhos do |t|
      t.string :nome
      t.integer :ano
      t.string :tipo
      t.string :foto
      t.text :descricao
      t.string :avaliacao

      t.timestamps null: false
    end
  end
end
