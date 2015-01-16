class AddStatusIdToEntrada < ActiveRecord::Migration
  def change
    add_column :entradas, :status_id, :integer 
  end
end
