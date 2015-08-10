class CreateListaFormMps < ActiveRecord::Migration
  def change
    create_table :lista_form_mps do |t|
      t.decimal :quant, :precision => 8, :scale =>2 
      t.references :formula, index: true
      t.references :mp, index: true

      t.timestamps
    end
  end
end
