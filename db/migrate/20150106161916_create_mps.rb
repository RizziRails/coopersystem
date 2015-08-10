class CreateMps < ActiveRecord::Migration
  def change
    create_table :mps do |t|
      t.string :nome
      t.string :apelido
      t.references :unidade, index: true

      t.timestamps
    end
  end
end
