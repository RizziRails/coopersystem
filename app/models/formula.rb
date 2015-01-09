class Formula < ActiveRecord::Base
  has_many :lista_prods
  has_many :lista_form_mps
  has_many :mps, :through => :lista_prods
  has_many :batches
  
  
  
  
end
