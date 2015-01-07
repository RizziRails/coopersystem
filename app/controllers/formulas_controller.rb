class FormulasController < ApplicationController
  before_action :set_formula, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @formulas = Formula.all.order(:nome)
    respond_with(@formulas)
  end

  def show
    respond_with(@formula)
  end

  def new
    @formula = Formula.new
    respond_with(@formula)
  end

  def edit
  end

  def create
    @formula = Formula.new(formula_params)
    @formula.save
    respond_with(@formula)
  end

  def update
    @formula.update(formula_params)
    respond_with(@formula)
  end

  def destroy
    @formula.destroy
    respond_with(@formula)
  end

  private
    def set_formula
      @formula = Formula.find(params[:id])
    end

    def formula_params
      params.require(:formula).permit(:nome, :obs)
    end
end
