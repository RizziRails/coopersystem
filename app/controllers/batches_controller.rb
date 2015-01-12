class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update, :destroy]
  before_action :set_lista, only: [:show]
  

  respond_to :html

 

  def set_lista
    @lista = ListaProd.where("formula_id = ? " , @batch.formula_id)
  end


  def index
    @batches = Batch.all
    respond_with(@batches)
  end

  def show
    respond_with(@batch)
  end

  def new
    @batch = Batch.new
    respond_with(@batch)
  end

  def edit
  end

  def create
    @batch = Batch.new(batch_params)
    flash[:notice] = 'Batch was successfully created.' if @batch.save
    respond_with(@batch)
  end

  def update
    @batch.update(batch_params)
    respond_with(@batch)
  end

  def destroy
    @batch.destroy
    respond_with(@batch)
  end

  private
    def set_batch
      @batch = Batch.find(params[:id])
    end

    def batch_params
      params.require(:batch).permit(:data, :numero, :data_entrega, :volume, :formula_id, :mp_id)
    end
end
