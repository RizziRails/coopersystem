class ListaEmbalagensController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_action :set_lista_embalagem, only: [:show, :edit, :update, :destroy]
  

  respond_to :html

  def index
    @lista_embalagens = ListaEmbalagem.all.order(:batch_id)
    respond_with(@lista_embalagens)
  end

  def show
    respond_with(@lista_embalagem)
  end

  def new
    @lista_embalagem = ListaEmbalagem.new
    respond_with(@lista_embalagem)
  end

  def edit
  end



  def create

    @batch = Batch.find(params[:batch_id])

    @lista_embalagem = ListaEmbalagem.new(lista_embalagem_params)
    
    flash[:notice] = 'Item criado com sucesso!' if @lista_embalagem.save  
    redirect_to batch_path(@batch)

  end





  def update
    @lista_embalagem.update(lista_embalagem_params)
    respond_with(@lista_embalagem)
  end


  def destroy
    @lista_embalagem.destroy
    respond_with(@lista_embalagem)
  end

  private
    def set_lista_embalagem
      @lista_embalagem = ListaEmbalagem.find(params[:id])
    end

    def lista_embalagem_params
      params.require(:lista_embalagem).permit(:batch_id, :qtde, :embalagem_id)
    end
end
