class DeleteTipoId < ActiveRecord::Migration
  def change
    remove_column :embalagens, :tipo_id
    add_column :embalagens, :tipo, :string
  
  end
end
