class AddColToBatchEntregue < ActiveRecord::Migration
  def change
    add_column :batches, :entregue, :boolean
    
  end
end
