class FirendsController < ApplicationController
  before_action :set_firend, only: [:show, :edit, :update, :destroy]

  # GET /firends
  def index
    @firends = Firend.all
  end

  # GET /firends/1
  def show
  end

  # GET /firends/new
  def new
    @firend = Firend.new
  end

  # GET /firends/1/edit
  def edit
  end

  # POST /firends
  def create
    @firend = Firend.new(firend_params)

    if @firend.save
      redirect_to @firend, notice: 'Firend was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /firends/1
  def update
    if @firend.update(firend_params)
      redirect_to @firend, notice: 'Firend was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /firends/1
  def destroy
    @firend.destroy
    redirect_to firends_url, notice: 'Firend was successfully destroyed.'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_firend
    @firend = Firend.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def firend_params
    params.require(:firend).permit(:name, :email, :phone)
  end
end
