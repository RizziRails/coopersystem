class CreateTipos < ActiveRecord::Migration
  def change
    create_table :tipos do |t|
      t.string :tipo
      t.string :obs

      t.timestamps
    end
  end
end
