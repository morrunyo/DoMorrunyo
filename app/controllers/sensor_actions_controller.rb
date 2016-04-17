class SensorActionsController < ApplicationController
  before_action :set_sensor_action, only: [:show, :edit, :update, :destroy]

  # GET /sensor_actions
  # GET /sensor_actions.json
  def index
    @sensor_actions = SensorAction.all
  end

  # GET /sensor_actions/1
  # GET /sensor_actions/1.json
  def show
  end

  # GET /sensor_actions/new
  def new
    @sensor_action = SensorAction.new
  end

  # GET /sensor_actions/1/edit
  def edit
  end

  # POST /sensor_actions
  # POST /sensor_actions.json
  def create
    @sensor_action = SensorAction.new(sensor_action_params)

    respond_to do |format|
      if @sensor_action.save
        format.html { redirect_to @sensor_action, notice: 'Sensor action was successfully created.' }
        format.json { render :show, status: :created, location: @sensor_action }
      else
        format.html { render :new }
        format.json { render json: @sensor_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensor_actions/1
  # PATCH/PUT /sensor_actions/1.json
  def update
    respond_to do |format|
      if @sensor_action.update(sensor_action_params)
        format.html { redirect_to @sensor_action, notice: 'Sensor action was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor_action }
      else
        format.html { render :edit }
        format.json { render json: @sensor_action.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensor_actions/1
  # DELETE /sensor_actions/1.json
  def destroy
    @sensor_action.destroy
    respond_to do |format|
      format.html { redirect_to sensor_actions_url, notice: 'Sensor action was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor_action
      @sensor_action = SensorAction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sensor_action_params
      params.require(:sensor_action).permit(:name, :sensorType_id, :action)
    end
end
