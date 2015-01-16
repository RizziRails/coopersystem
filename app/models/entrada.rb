class Entrada < ActiveRecord::Base
  belongs_to :mp 
  belongs_to :status

  validates_presence_of :mp_id, :qtde, :nf, :lote, :status 
  validates_numericality_of :qtde, :nf
  
  
  validate :data_invalida

private
def data_invalida
  errors.add(:validade,
      "A data de validade não pode ser igual ou inferior à data de entrada") unless validade > receb
end
 
  
  
end
