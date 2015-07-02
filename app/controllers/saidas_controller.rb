class SaidasController < ApplicationController
   skip_before_action  :verify_authenticity_token
  before_action :set_saida, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @saidas = Saida.order('exped desc').all.page params['page']
    respond_with(@saidas)
  end

  def show
    respond_with(@saida)
  end

  def new
    @saida = Saida.new
    respond_with(@saida)
  end

  def edit
  end

  def create
    @saida = Saida.new(saida_params)
    @saida.save
    respond_with(@saida)
  end

  def update
    @saida.update(saida_params)
    respond_with(@saida)
  end

  def destroy
    @saida.destroy
    respond_with(@saida)
  end

  private
    def set_saida
      @saida = Saida.find(params[:id])
    end

    def saida_params
      params.require(:saida).permit(:mp_id, :exped, :qtde, :nf, :lote, :validade, :obs)
    end
end
