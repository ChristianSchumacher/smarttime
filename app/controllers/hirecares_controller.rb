class HirecaresController < ApplicationController
  before_action :set_hirecare, only: [:show, :edit, :update, :destroy]

  # GET /hirecares
  # GET /hirecares.json
  def index
    @hirecares = Hirecare.all
  end

  # GET /hirecares/1
  # GET /hirecares/1.json
  def show
  end

  # GET /hirecares/new
  def new
    @hirecare = Hirecare.new
  end

  # GET /hirecares/1/edit
  def edit
  end

  # POST /hirecares
  # POST /hirecares.json
  def create
    @hirecare = Hirecare.new(hirecare_params)

    respond_to do |format|
      if @hirecare.save
        format.html { redirect_to @hirecare, notice: 'Hirecare was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hirecare }
      else
        format.html { render action: 'new' }
        format.json { render json: @hirecare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hirecares/1
  # PATCH/PUT /hirecares/1.json
  def update
    respond_to do |format|
      if @hirecare.update(hirecare_params)
        format.html { redirect_to @hirecare, notice: 'Hirecare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hirecare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hirecares/1
  # DELETE /hirecares/1.json
  def destroy
    @hirecare.destroy
    respond_to do |format|
      format.html { redirect_to hirecares_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hirecare
      @hirecare = Hirecare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hirecare_params
      params.require(:hirecare).permit(:badge, :regestration_date, :fuel, :brand, :model, :smoking, :defects, :status_id, :tech_check, :comment)
    end
end
