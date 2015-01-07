class CreateListaProds < ActiveRecord::Migration
  def change
    create_table :lista_prods do |t|
      t.integer :formula_id
      t.integer :mp_id
      t.decimal :qtde,  :precision => 10, :scale =>2 
      t.references :formula, :lista_prods
      t.references :mps, :lista_prods

      t.timestamps
    end
  end
end
