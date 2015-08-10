class Unidade < ActiveRecord::Base
	has_many :embalagens
  validates_presence_of :nome, :sigla
end
