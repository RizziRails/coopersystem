class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.date :data
      t.date :data_entrega
      t.decimal :volume, :precision => 10, :scale => 2
      t.references :formula, index: true
      t.references :mp, index: true

      t.timestamps
    end
  end
end
