class CreateSaidas < ActiveRecord::Migration
  def change
    create_table :saidas do |t|
      t.references :mp, index: true
      t.date :exped
      t.decimal :qtde
      t.string :nf
      t.string :lote
      t.date :validade
      t.text :obs

      t.timestamps
    end
  end
end
