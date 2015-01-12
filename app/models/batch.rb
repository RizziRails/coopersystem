class Batch < ActiveRecord::Base
  belongs_to :formula
  belongs_to :mp
  belongs_to :lista_prod
  


  has_many :formulas
  has_many :lista_prods
  has_many :embalagens , :through => :lista_embalagens
  has_many :lista_embalagens
  has_many :tipos, :through => :embalagens
  

  
validates_presence_of :volume, :numero

validates_numericality_of :volume


validates_presence_of :formula_id


  
  
end
