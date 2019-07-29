class ModelsController < ApplicationController
  before_action :set_model, only: [:show, :update, :destroy]

  # GET /models
  def index
    @models = Model.all

    render json: ModelSerializer.new(@models)
  end

  # GET /models/1
  def show
    render json: ModelSerializer.new(@model)
  end

  # POST /models
  def create
    @model = Model.new(model_params)

    if @model.save
      render json: ModelSerializer.new(@model), status: :created, location: @model
    else
      render json: @model.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /models/1
  def update
    if @model.update(model_params)
      render json: ModelSerializer.new(@model)
    else
      render json: @model.errors, status: :unprocessable_entity
    end
  end

  # DELETE /models/1
  def destroy
    @model.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model
      @model = Model.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def model_params
      params.require(:model).permit(:user_id, :make_id, :vehicle_id, :fabric_id, :sa_id, :name, :style, :engine, :msrp, :specs, :drivetrain, :transmission)
    end
end