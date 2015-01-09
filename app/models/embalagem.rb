class Embalagem < ActiveRecord::Base
  belongs_to :tipo
  belongs_to :material
  belongs_to :unidade
end
