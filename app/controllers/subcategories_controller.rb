class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: [:show, :update, :destroy]

  # GET /subcategories
  def index
    @subcategories = Subcategory.all

    render json: {status: 'success', data: @subcategories}, status: :ok
  end

  # GET /subcategories/1
  def show
    render json: {status: 'success', data: @subcategory}, status: :ok
  end

  # POST /subcategories
  def create
    @subcategory = Subcategory.new(subcategory_params)

    if @subcategory.save
      # render json: @subcategory, status: :created, location: @subcategory
      render json: {status: 'success', data: @subcategory}, status: :created, location: @subcategory
    else
      #render json: @subcategory.errors, status: :unprocessable_entity
      render json: {status: 'fail', data: @subcategory.errors}, status: :unprocessable_entity

    end
  end

  # PATCH/PUT /subcategories/1
  def update
    if @subcategory.update(subcategory_params)
      render json: {status: 'success', data: @subcategory}, status: :ok
    else
      render json: {status: 'fail', data: @subcategory.errors}, status: :unprocessable_entity
    end
  end

  # DELETE /subcategories/1
  def destroy
    @subcategory.destroy
    render json: {status: 'success', data: nil}, status: :ok
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subcategory
      @subcategory = Subcategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subcategory_params
      params.require(:subcategory).permit(:title, :text, :category)
    end
end
