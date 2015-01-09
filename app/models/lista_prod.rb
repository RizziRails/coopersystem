class ListaProd < ActiveRecord::Base
  belongs_to :mp
  belongs_to :formula
  
  has_many :mps
  has_many :ofs
  
  belongs_to :batch
  
end
