class Embalagem < ActiveRecord::Base
  belongs_to :tipo
  belongs_to :material
  belongs_to :unidade
  
  validates_presence_of :volume, :tipo_id, :unidade_id
 
end
