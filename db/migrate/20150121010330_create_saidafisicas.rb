class CreateSaidafisicas < ActiveRecord::Migration
  def change
    create_table :saidafisicas do |t|
      t.references :mp, index: true
      t.references :batch, index: true
      t.date :exped
      t.decimal :qtde
      t.string :lote
      t.string :validade
      t.text :obs

      t.timestamps
    end
  end
end
