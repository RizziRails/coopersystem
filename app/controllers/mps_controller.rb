class MpsController < ApplicationController
  before_action :set_mp, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mps = Mp.all.order(:nome)
    respond_with(@mps)
  end

  def show
    respond_with(@mp)
  end

  def new
    @mp = Mp.new
    respond_with(@mp)
  end

  def edit
  end

  def create        
    @mp = Mp.new(mp_params)
    @mp.save
    respond_with(@mp)
  end

  def update
    @mp.update(mp_params)
    respond_with(@mp)
  end

  def destroy
    @mp.destroy
    respond_with(@mp)
  end

  private
    def set_mp
      @mp = Mp.find(params[:id])
    end

    def mp_params
      params.require(:mp).permit(:nome, :apelido, :unidade_id)
    end
end
