class CreateHarmonizacoes < ActiveRecord::Migration
  def change
    create_table :harmonizacoes do |t|
      t.integer :vinho_id
      t.integer :prato_id

      t.timestamps null: false
    end
  end
end
