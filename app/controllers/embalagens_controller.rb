class EmbalagensController < ApplicationController
   skip_before_action  :verify_authenticity_token
  before_action :set_embalagem, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @embalagens = Embalagem.all
    respond_with(@embalagens)
  end

  def show
    respond_with(@embalagem)
  end

  def new
    @embalagem = Embalagem.new
    respond_with(@embalagem)
  end

  def edit
  end

  def create
    @embalagem = Embalagem.new(embalagem_params)
    @embalagem.save
    respond_with(@embalagem)
  end

  def update
    @embalagem.update(embalagem_params)
    respond_with(@embalagem)
  end

  def destroy
    @embalagem.destroy
    respond_with(@embalagem)
  end

  private
    def set_embalagem
      @embalagem = Embalagem.find(params[:id])
    end

    def embalagem_params
      params.require(:embalagem).permit(:volume, :caracteristicas, :tipo_id, :material_id, :unidade_id, :tipo)
    end
end
