class BmwWheelsController < ApplicationController
  before_action :set_bmw_wheel, only: [:show, :update, :destroy]

  # GET /bmw_wheels
  def index
    @bmw_wheels = BmwWheel.all

    render json: BmwWheelSerializer.new(@bmw_wheels)
  end

  # GET /bmw_wheels/1
  def show
    render json: BmwWheelSerializer.new(@bmw_wheel)
  end

  # POST /bmw_wheels
  def create
    @bmw_wheel = BmwWheel.new(make_params)

    if @bmw_wheel.save
      render json: BmwWheelSerializer.new(@bmw_wheel), status: :created, location: @bmw_wheel
    else
      render json: @bmw_wheel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bmw_wheels/1
  def update
    if @bmw_wheel.update(bmw_wheel_params)
      render json: BmwWheelSerializer.new(@bmw_wheel)
    else
      render json: @bmw_wheel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bmw_wheels/1
  def destroy
    @bmw_wheel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bmw_wheel
      @bmw_wheel = BmwWheel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bmw_wheel_params
      params.require(:bmw_wheel).permit(:wheel_link, :wheel_code, :wheel_name)
    end
end
