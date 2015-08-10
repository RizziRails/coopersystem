class AddCollumnNrToBatch < ActiveRecord::Migration
  def change
    add_column :batches, :numero, :string
  end
end
