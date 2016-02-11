class ChesController < ApplicationController
  before_action :set_ch, only: [:show, :edit, :update, :destroy]

  # GET /ches
  # GET /ches.json
  def index
    @ches = Ch.all
  end

  # GET /ches/1
  # GET /ches/1.json
  def show
  end

  # GET /ches/new
  def new
    @ch = Ch.new
    @chs = Ch.all
  end

  # GET /ches/1/edit
  def edit
  end

  # POST /ches
  # POST /ches.json
  def create
    @ch = Ch.new(ch_params)

    respond_to do |format|
      if @ch.save
        # format.html { redirect_to @ch, notice: 'Ch was successfully created.' }
        format.js# { redirect_to @ch, notice: 'Ch was successfully created.' }
        # format.json# { render :show, status: :created, location: @ch }
      else
        format.html { render :new }
        format.json { render json: @ch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ches/1
  # PATCH/PUT /ches/1.json
  def update
    respond_to do |format|
      if @ch.update(ch_params)
        format.html { redirect_to @ch, notice: 'Ch was successfully updated.' }
        format.json { render :show, status: :ok, location: @ch }
      else
        format.html { render :edit }
        format.json { render json: @ch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ches/1
  # DELETE /ches/1.json
  def destroy
    @ch.destroy
    respond_to do |format|
      format.html { redirect_to ches_url, notice: 'Ch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ch
      @ch = Ch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ch_params
      params.require(:ch).permit(:content)
    end
end
