class OutRepertoriesController < ApplicationController
  before_action :set_out_repertory, only: [:show, :edit, :update, :destroy]

  # GET /out_repertories
  # GET /out_repertories.json
  def index
    @out_repertories = OutRepertory.page(params[:page]).per(10)
  end

  # GET /out_repertories/1
  # GET /out_repertories/1.json
  def show
  end

  # GET /out_repertories/new
  def new
    @out_repertory = OutRepertory.new
  end

  # GET /out_repertories/1/edit
  def edit
  end

  # POST /out_repertories
  # POST /out_repertories.json
  def create
    @out_repertory = OutRepertory.new(out_repertory_params)

    respond_to do |format|
      if @out_repertory.save
        format.html { redirect_to @out_repertory, notice: 'Out repertory was successfully created.' }
        format.json { render :show, status: :created, location: @out_repertory }
      else
        format.html { render :new }
        format.json { render json: @out_repertory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /out_repertories/1
  # PATCH/PUT /out_repertories/1.json
  def update
    respond_to do |format|
      if @out_repertory.update(out_repertory_params)
        format.html { redirect_to @out_repertory, notice: 'Out repertory was successfully updated.' }
        format.json { render :show, status: :ok, location: @out_repertory }
      else
        format.html { render :edit }
        format.json { render json: @out_repertory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /out_repertories/1
  # DELETE /out_repertories/1.json
  def destroy
    @out_repertory.destroy
    respond_to do |format|
      format.html { redirect_to out_repertories_url, notice: 'Out repertory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_out_repertory
      @out_repertory = OutRepertory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def out_repertory_params
      params.require(:out_repertory).permit(:get_at, :get_by, :desc, :pay_money, :sum_price, :real_price)
    end
end
