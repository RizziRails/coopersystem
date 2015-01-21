class Mp < ActiveRecord::Base
  has_many :lista_prods, dependent: :destroy
  has_many :formulas, :through => :lista_prods
  has_many :batches
  has_many :entradas, dependent: :destroy
  has_many :saidas , dependent: :destroy
  has_many :saidafisicas
  
 
  
  belongs_to :formula
  belongs_to :lista_prod
  belongs_to :unidade
  
  validates_presence_of :nome, :apelido, :unidade_id
end
