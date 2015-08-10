class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :tipo
      t.string :obs

      t.timestamps
    end
  end
end
