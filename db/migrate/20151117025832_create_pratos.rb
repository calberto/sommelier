class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
