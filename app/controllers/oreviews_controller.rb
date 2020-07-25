class OreviewsController < ApplicationController
  before_action :set_oreview, only: [:show, :edit, :update, :destroy]

  # GET /oreviews
  # GET /oreviews.json
  def index
    @oreviews = Oreview.all
    @id = params[:id]
  end

  # GET /oreviews/1
  # GET /oreviews/1.json
  def show
    @oreviews = Oreview.all
    @id = params[:id]
  end

  # GET /oreviews/new
  def new
    @oreview = Oreview.new
    @id = params[:id]
  end

  # GET /oreviews/1/edit
  def edit
    @id = params[:id]
  end

  # POST /oreviews
  # POST /oreviews.json
  def create
    @oreview = Oreview.new(oreview_params)

    respond_to do |format|
      if @oreview.save
        format.html { redirect_to @oreview, notice: 'Oreview was successfully created.' }
        format.json { render :show, status: :created, location: @oreview }
      else
        format.html { render :new }
        format.json { render json: @oreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oreviews/1
  # PATCH/PUT /oreviews/1.json
  def update
    respond_to do |format|
      if @oreview.update(oreview_params)
        format.html { redirect_to @oreview, notice: 'Oreview was successfully updated.' }
        format.json { render :show, status: :ok, location: @oreview }
      else
        format.html { render :edit }
        format.json { render json: @oreview.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oreviews/1
  # DELETE /oreviews/1.json
  def destroy
    @oreview.destroy
    respond_to do |format|
      format.html { redirect_to '/oreviews'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oreview
      @id = params[:id]
      @oreview = Oreview.find_by(game_id: @id.to_i)
    end

    # Only allow a list of trusted parameters through.
    def oreview_params
      params.require(:oreview).permit(:titulo, :score, :review, :game_id)
    end
end
