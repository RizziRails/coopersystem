class CreateFormulas < ActiveRecord::Migration
  def change
    create_table :formulas do |t|
      t.string :nome
      t.text :obs

      t.timestamps
    end
  end
end
