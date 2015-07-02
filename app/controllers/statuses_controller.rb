class StatusesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  before_action :set_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @statuses = Status.all
    respond_with(@statuses)
  end

  def show
    respond_with(@status)
  end

  def new
    @status = Status.new
    respond_with(@status)
  end

  def edit
  end

  def create
    @status = Status.new(status_params)
    flash[:notice] = 'Status was successfully created.' if @status.save
    respond_with(@status)
  end

  def update
    flash[:notice] = 'Status was successfully updated.' if @status.update(status_params)
    respond_with(@status)
  end

  def destroy
    @status.destroy
    respond_with(@status)
  end

  private
    def set_status
      @status = Status.find(params[:id])
    end

    def status_params
      params.require(:status).permit(:tipo, :obs)
    end
end
