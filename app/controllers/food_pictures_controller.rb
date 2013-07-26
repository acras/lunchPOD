class FoodPicturesController < ApplicationController
  before_action :set_food_picture, only: [:show, :edit, :update, :destroy]

  # GET /food_pictures
  # GET /food_pictures.json
  def index
    @food_pictures = FoodPicture.all
  end

  # GET /food_pictures/1
  # GET /food_pictures/1.json
  def show
  end

  # GET /food_pictures/new
  def new
    @food_picture = FoodPicture.new
  end

  # GET /food_pictures/1/edit
  def edit
  end

  # POST /food_pictures
  # POST /food_pictures.json
  def create
    @food_picture = FoodPicture.new(food_picture_params)

    respond_to do |format|
      if @food_picture.save
        format.html { redirect_to @food_picture, notice: 'Food picture was successfully created.' }
        format.json { render action: 'show', status: :created, location: @food_picture }
      else
        format.html { render action: 'new' }
        format.json { render json: @food_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_pictures/1
  # PATCH/PUT /food_pictures/1.json
  def update
    respond_to do |format|
      if @food_picture.update(food_picture_params)
        format.html { redirect_to @food_picture, notice: 'Food picture was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @food_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_pictures/1
  # DELETE /food_pictures/1.json
  def destroy
    @food_picture.destroy
    respond_to do |format|
      format.html { redirect_to food_pictures_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_picture
      @food_picture = FoodPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def food_picture_params
      params.require(:food_picture).permit(:day, :picture)
    end
end
