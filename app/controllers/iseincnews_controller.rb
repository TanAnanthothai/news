class IseincnewsController < ApplicationController
  before_action :set_iseincnews, only: [:manage, :show, :edit, :update, :destroy]

  # GET /manage
  def manage
    @iseincnews = Iseincnews.all
  end
  # GET /iseincnews
  # GET /iseincnews.json
  def index
    @iseincnews = Iseincnews.all
  end

  # GET /iseincnews/1
  # GET /iseincnews/1.json
  def show
  end

  # GET /iseincnews/new
  def new
    @iseincnews = Iseincnews.new
  end

  # GET /iseincnews/1/edit
  def edit
  end

  # POST /iseincnews
  # POST /iseincnews.json
  def create
    @iseincnews = Iseincnews.new(iseincnews_params)

    respond_to do |format|
      if @iseincnews.save
        format.html { redirect_to @iseincnews, notice: 'Iseincnews was successfully created.' }
        format.json { render action: 'show', status: :created, location: @iseincnews }
      else
        format.html { render action: 'new' }
        format.json { render json: @iseincnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iseincnews/1
  # PATCH/PUT /iseincnews/1.json
  def update
    respond_to do |format|
      if @iseincnews.update(iseincnews_params)
        format.html { redirect_to @iseincnews, notice: 'Iseincnews was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @iseincnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iseincnews/1
  # DELETE /iseincnews/1.json
  def destroy
    @iseincnews.destroy
    respond_to do |format|
      format.html { redirect_to iseincnews_index_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iseincnews
      if params[:id].blank?
      else

      @iseincnews = Iseincnews.find(params[:id])
    end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iseincnews_params
      params.require(:iseincnews).permit(:title, :description, :image)
    end
end
