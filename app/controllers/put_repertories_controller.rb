class PutRepertoriesController < ApplicationController
  before_action :set_put_repertory, only: [:show, :edit, :update, :destroy]

  # GET /put_repertories
  # GET /put_repertories.json
  def index
    @put_repertories = PutRepertory.page(params[:page]).per(10)
  end

  # GET /put_repertories/1
  # GET /put_repertories/1.json
  def show
    respond_to do |format|
      format.js {}
    end
  end

  # GET /put_repertories/new
  def new
    @put_repertory = PutRepertory.new
    respond_to do |format|
      format.js {}
    end
  end

  # GET /put_repertories/1/edit
  def edit
    respond_to do |format|
      format.js {}
    end
  end

  # POST /put_repertories
  # POST /put_repertories.json
  def create
    @put_repertory = PutRepertory.new(put_repertory_params)
    surplus = @put_repertory.part.number || 0
    @put_repertory.part.number = surplus + @put_repertory.sum
    respond_to do |format|
      if @put_repertory.save
        @put_repertory.part.save
        format.html { redirect_to put_repertories_path, notice: 'Put repertory was successfully created.' }
        format.json { render :show, status: :created, location: @put_repertory }
      else
        format.html { render :new }
        format.json { render json: @put_repertory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /put_repertories/1
  # PATCH/PUT /put_repertories/1.json
  def update
    respond_to do |format|
      if @put_repertory.update(put_repertory_params)
        format.html { redirect_to @put_repertory, notice: 'Put repertory was successfully updated.' }
        format.json { render :show, status: :ok, location: @put_repertory }
      else
        format.html { render :edit }
        format.json { render json: @put_repertory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /put_repertories/1
  # DELETE /put_repertories/1.json
  def destroy
    @put_repertory.destroy
    respond_to do |format|
      format.html { redirect_to put_repertories_url, notice: 'Put repertory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_put_repertory
      @put_repertory = PutRepertory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def put_repertory_params
      params.require(:put_repertory).permit(:order_num, :project_class, :sum, :total_price, :express_num, :arrival_date, :discount, :discount_price, :remarks, :part_id)
    end
end
