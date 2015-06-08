class Embalagem < ActiveRecord::Base
  belongs_to :material
  belongs_to :unidade
  belongs_to :batch
  
  validates_presence_of :volume, :tipo, :unidade_id
 
end
