class CreateListaEmbalagens < ActiveRecord::Migration
  def change
    create_table :lista_embalagens do |t|
      t.references :batch, index: true
      t.integer :qtde
      t.references :embalagem, index: true

      t.timestamps
    end
  end
end
