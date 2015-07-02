class ListaProdsController < ApplicationController
  skip_before_action  :verify_authenticity_token
  before_action :set_lista_prod, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @lista_prods = ListaProd.all.order(:formula_id)
    respond_with(@lista_prods)
  end

  def show
    respond_with(@lista_prod)
  end

  def new
    @lista_prod = ListaProd.new
    respond_with(@lista_prod)
  end

  def edit
    
  end






  def create
    @formula = Formula.find(params[:formula_id])
   
    
    @lista_prod = ListaProd.new(lista_prod_params)
    flash[:notice] = 'Item criado com sucesso !' if @lista_prod.save
    
    redirect_to formula_path(@formula)
     
  end



  def update
    @lista_prod.update(lista_prod_params)
    respond_with(@lista_prod)
  end

  def destroy
    @lista_prod.destroy
    respond_with(@lista_prod)
  end

  private
    def set_lista_prod
      @lista_prod = ListaProd.find(params[:id])
    end

    def lista_prod_params
      params.require(:lista_prod).permit(:formula_id, :mp_id, :qtde)
    end
end
