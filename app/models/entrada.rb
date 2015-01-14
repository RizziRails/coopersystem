class Entrada < ActiveRecord::Base
  belongs_to :mp

  validates_presence_of :mp_id, :qtde, :nf, :lote
  validates_numericality_of :qtde, :nf
end
