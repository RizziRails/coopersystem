class ListaProd < ActiveRecord::Base
  belongs_to :mp
  belongs_to :formula
  
  has_many :mps
  has_many :ofs
  
  belongs_to :batch
  validates_presence_of :formula_id, :mp_id, :qtde
  validates_numericality_of :qtde
  
  
end
