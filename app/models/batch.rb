class Batch < ActiveRecord::Base
  belongs_to :formula
  belongs_to :mp
  has_many :formulas
  has_many :lista_prods
  belongs_to :lista_prod
  
  validates_presence_of :volume
validates_numericality_of :volume

validates_presence_of :formula_id


  
  
end
