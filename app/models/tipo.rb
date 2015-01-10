class Tipo < ActiveRecord::Base
	has_many :embalagens
  validates_presence_of :tipo
end
