class Mp < ActiveRecord::Base
  has_many :lista_prods
  has_many :formulas, :through => :lista_prods
  has_many :batches  
  
 
  
  belongs_to :formula
  belongs_to :lista_prod
  belongs_to :unidade
  
  validates_presence_of :nome, :apelido, :unidade_id
end
