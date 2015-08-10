class ListaEmbalagem < ActiveRecord::Base
  belongs_to :batch
  
  belongs_to :embalagem
  
  validates_presence_of :batch_id, :qtde, :embalagem_id
  validates_numericality_of :qtde
end
