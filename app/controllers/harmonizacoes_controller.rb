class HarmonizacoesController < ApplicationController
  before_action :set_harmonizaco, only: [:show, :edit, :update, :destroy]

  # GET /harmonizacoes
  # GET /harmonizacoes.json
  def index
    #@harmonizacoes = Harmonizacao.all
    @harmonizacoes = Harmonizacao.all.page(params['page']).per(15)
  end

  # GET /harmonizacoes/1
  # GET /harmonizacoes/1.json
  def show
  end

  # GET /harmonizacoes/new
  def new
    @harmonizacao = Harmonizacao.new
  end

  # GET /harmonizacoes/1/edit
  def edit
  end

  # POST /harmonizacoes
  # POST /harmonizacoes.json
  def create
    @harmonizacao = Harmonizacao.new(harmonizaco_params)

    respond_to do |format|
      if @harmonizacao.save
        format.html { redirect_to @harmonizacao, notice: 'Harmonizacao was successfully created.' }
        format.json { render :show, status: :created, location: @harmonizacao }
      else
        format.html { render :new }
        format.json { render json: @harmonizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /harmonizacoes/1
  # PATCH/PUT /harmonizacoes/1.json
  def update
    respond_to do |format|
      if @harmonizacao.update(harmonizaco_params)
        format.html { redirect_to @harmonizacao, notice: 'Harmonizacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @harmonizacao }
      else
        format.html { render :edit }
        format.json { render json: @harmonizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /harmonizacoes/1
  # DELETE /harmonizacoes/1.json
  def destroy
    @harmonizacao.destroy
    respond_to do |format|
      format.html { redirect_to harmonizacoes_url, notice: 'Harmonizacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_harmonizaco
      @harmonizacao = Harmonizacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def harmonizacao_params
      params.require(:harmonizacao).permit(:vinho_id, :prato_id)
    end
end
