class SaidafisicasController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_action :set_saidafisica, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @saidafisicas = Saidafisica.all
    respond_with(@saidafisicas)
  end

  def show
    respond_with(@saidafisica)
  end

  def new
    @saidafisica = Saidafisica.new
    respond_with(@saidafisica)
  end

  def edit
  end

  def create
    @saidafisica = Saidafisica.new(saidafisica_params)
    flash[:notice] = 'Saida física foi criada com sucesso.' if @saidafisica.save
    respond_with(@saidafisica)
  end

  def update
    flash[:notice] = 'Saida física foi atualizada com sucesso.' if @saidafisica.update(saidafisica_params)
    respond_with(@saidafisica)
  end

  def destroy
    @saidafisica.destroy
    respond_with(@saidafisica)
  end

  private
    def set_saidafisica
      @saidafisica = Saidafisica.find(params[:id])
    end

    def saidafisica_params
      params.require(:saidafisica).permit(:mp_id, :batch_id, :exped, :qtde, :lote, :validade, :obs)
    end
end
