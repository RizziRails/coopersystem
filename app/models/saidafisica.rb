class Saidafisica < ActiveRecord::Base
  belongs_to :mp
  belongs_to :batch
  
  validates_presence_of :mp_id, :lote, :batch_id , :qtde, :validade
  validates_numericality_of :qtde 
  
  

  
  
  
  
  
end
