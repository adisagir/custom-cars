class BmwColorsController < ApplicationController
  before_action :set_bmw_color, only: [:show, :update, :destroy]

  # GET /bmw_colors
  def index
    @bmw_colors = BmwColor.all

    render json: BmwColorSerializer.new(@bmw_colors)
  end

  # GET /bmw_colors/1
  def show
    render json: BmwColorSerializer.new(@bmw_color)
  end

  # POST /bmw_colors
  def create
    @bmw_color = BmwColor.new(make_params)

    if @bmw_color.save
      render json: BmwColorSerializer.new(@bmw_color), status: :created, location: @bmw_color
    else
      render json: @bmw_color.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bmw_colors/1
  def update
    if @bmw_color.update(bmw_color_params)
      render json: BmwColorSerializer.new(@bmw_color)
    else
      render json: @bmw_color.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bmw_colors/1
  def destroy
    @bmw_color.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bmw_color
      @bmw_color = BmwColor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bmw_color_params
      params.require(:bmw_color).permit(:name, :color_code, :color_link)
    end
end
