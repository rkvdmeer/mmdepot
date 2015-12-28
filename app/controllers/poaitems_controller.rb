class PoaitemsController < ApplicationController
  before_action :set_poaitem, only: [:show, :edit, :update, :destroy]

  # GET /poaitems
  # GET /poaitems.json
  def index
    @poaitems = Poaitem.all
  end

  # GET /poaitems/1
  # GET /poaitems/1.json
  def show
  end

  # GET /poaitems/new
  def new
    @poaitem = Poaitem.new
  end

  # GET /poaitems/1/edit
  def edit
  end

  # POST /poaitems
  # POST /poaitems.json
  def create
    @poaitem = Poaitem.new(poaitem_params)

    respond_to do |format|
      if @poaitem.save
        format.html { redirect_to @poaitem, notice: 'Poaitem was successfully created.' }
        format.json { render :show, status: :created, location: @poaitem }
      else
        format.html { render :new }
        format.json { render json: @poaitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poaitems/1
  # PATCH/PUT /poaitems/1.json
  def update
    respond_to do |format|
      if @poaitem.update(poaitem_params)
        format.html { redirect_to @poaitem, notice: 'Poaitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @poaitem }
      else
        format.html { render :edit }
        format.json { render json: @poaitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poaitems/1
  # DELETE /poaitems/1.json
  def destroy
    @poaitem.destroy
    respond_to do |format|
      format.html { redirect_to poaitems_url, notice: 'Poaitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poaitem
      @poaitem = Poaitem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poaitem_params
      params.require(:poaitem).permit(:content, :type)
    end
end
