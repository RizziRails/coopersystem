class ListaEmbalagem < ActiveRecord::Base
  belongs_to :batch
  belongs_to :embalagem
end
