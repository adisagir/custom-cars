class MercedesColorsController < ApplicationController
  before_action :set_mercedes_color, only: [:show, :update, :destroy]

  # GET /mercedes_colors
  def index
    @mercedes_colors = MercedesColor.all

    render json: MercedesColorSerializer.new(@mercedes_colors)
  end

  # GET /mercedes_colors/1
  def show
    render json: MercedesColorSerializer.new(@mercedes_color)
  end

  # POST /mercedes_colors
  def create
    @mercedes_color = MercedesColor.new(make_params)

    if @mercedes_color.save
      render json: MercedesColorSerializer.new(@mercedes_color), status: :created, location: @mercedes_color
    else
      render json: @mercedes_color.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mercedes_colors/1
  def update
    if @mercedes_color.update(mercedes_color_params)
      render json: MercedesColorSerializer.new(@mercedes_color)
    else
      render json: @mercedes_color.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mercedes_colors/1
  def destroy
    @mercedes_color.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mercedes_color
      @mercedes_color = MercedesColor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mercedes_color_params
      params.require(:mercedes_color).permit(:name, :color_code, :color_link)
    end
end
