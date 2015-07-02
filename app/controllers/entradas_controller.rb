class EntradasController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_action :set_entrada, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @entradas = Entrada.order('receb desc').all.page params['page']
    respond_with(@entradas)
  end

  def show
    respond_with(@entrada)
  end

  def new
    @entrada = Entrada.new
    respond_with(@entrada)
  end

  def edit
  end

 def create
   @entrada = Entrada.new(entrada_params)
   flash[:notice] = 'Entrada was successfully created.' if @entrada.save
    respond_with(@entrada)
  end

  # Este create é para criar direto do show de Mps 
 # def create
    #  @mp = Mp.find(params[:mp_id])
     # @entrada = @mp.entradas.create(params[:entrada].permit(:mp_id, :receb, :qtde, :nf, :lote, :validade, :obs))   #importante voce fazer esta permissão para adicionar os comentários !
     # redirect_to mp_path(@mp)
    #  end










  def update
    flash[:notice] = 'Entrada was successfully updated.' if @entrada.update(entrada_params)
    respond_with(@entrada)
  end

  def destroy
    @entrada.destroy
    respond_with(@entrada)
  end

  private
    def set_entrada
      @entrada = Entrada.find(params[:id])
    end

    def entrada_params
      params.require(:entrada).permit(:mp_id, :receb, :qtde, :nf, :lote, :validade, :status_id, :obs)
    end
end
