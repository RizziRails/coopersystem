class Embalagem < ActiveRecord::Base
  belongs_to :material
  belongs_to :unidade
  belongs_to :batch
  
  validates_presence_of :volume, :tipo, :unidade_id
  
  
  validates_numericality_of :volume, :message => " Permitido sómente valores decimais separados por ponto ( Ex: 1.2 ; 0.2 ) "
  

  
  
 
end
