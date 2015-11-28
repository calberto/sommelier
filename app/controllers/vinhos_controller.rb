class VinhosController < ApplicationController
  before_action :set_vinho, only: [:show, :edit, :update, :destroy]

  # GET /vinhos
  # GET /vinhos.json
  def index
    #@vinhos = Vinho.all
    @vinhos = Vinho.all.page(params['page']).per(15)
  end

  # GET /vinhos/1
  # GET /vinhos/1.json
  def show
  end

  # GET /vinhos/new
  def new
    @vinho = Vinho.new
  end

  # GET /vinhos/1/edit
  def edit
  end

  # POST /vinhos
  # POST /vinhos.json
  def create
    @vinho = Vinho.new(vinho_params)

    respond_to do |format|
      if @vinho.save
        format.html { redirect_to @vinho, notice: 'Vinho was successfully created.' }
        format.json { render :show, status: :created, location: @vinho }
      else
        format.html { render :new }
        format.json { render json: @vinho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vinhos/1
  # PATCH/PUT /vinhos/1.json
  def update
    respond_to do |format|
      if @vinho.update(vinho_params)
        format.html { redirect_to @vinho, notice: 'Vinho was successfully updated.' }
        format.json { render :show, status: :ok, location: @vinho }
      else
        format.html { render :edit }
        format.json { render json: @vinho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vinhos/1
  # DELETE /vinhos/1.json
  def destroy
    @vinho.destroy
    respond_to do |format|
      format.html { redirect_to vinhos_url, notice: 'Vinho was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vinho
      @vinho = Vinho.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vinho_params
      params.require(:vinho).permit(:nome, :ano, :tipo, :foto, :descricao, :avaliacao)
    end
end
