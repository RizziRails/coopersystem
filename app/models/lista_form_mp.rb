class ListaFormMp < ActiveRecord::Base
  belongs_to :formula
  belongs_to :mp
end
