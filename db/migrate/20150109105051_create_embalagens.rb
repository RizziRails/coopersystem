class CreateEmbalagens < ActiveRecord::Migration
  def change
    create_table :embalagens do |t|
      t.decimal :volume
      t.text :caracteristicas
      t.references :tipo, index: true
      t.references :material, index: true
      t.references :unidade, index: true

      t.timestamps
    end
  end
end
