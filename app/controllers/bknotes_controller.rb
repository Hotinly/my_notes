class BknotesController < ApplicationController
  before_action :set_bknote, only: [:show, :edit, :update, :destroy]

  # GET /bknotes
  # GET /bknotes.json
  def index
    @bknotes = Bknote.all
  end

  # GET /bknotes/1
  # GET /bknotes/1.json
  def show
  end

  # GET /bknotes/new
  def new
    @bknote = Bknote.new
    # @book = Book.first
    @books = Book.all
  end

  # GET /bknotes/1/edit
  def edit
    # @book = Book.first
    @books = Book.all
  end

  # POST /bknotes
  # POST /bknotes.json
  def create
    @bknote = Bknote.new(bknote_params)

    respond_to do |format|
      if @bknote.save
        format.html { redirect_to @bknote, notice: 'Bknote was successfully created.' }
        format.json { render :show, status: :created, location: @bknote }
      else
        format.html { render :new }
        format.json { render json: @bknote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bknotes/1
  # PATCH/PUT /bknotes/1.json
  def update
    respond_to do |format|
      if @bknote.update(bknote_params)
        format.html { redirect_to @bknote, notice: 'Bknote was successfully updated.' }
        format.json { render :show, status: :ok, location: @bknote }
      else
        format.html { render :edit }
        format.json { render json: @bknote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bknotes/1
  # DELETE /bknotes/1.json
  def destroy
    @bknote.destroy
    respond_to do |format|
      format.html { redirect_to bknotes_url, notice: 'Bknote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bknote
      @bknote = Bknote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bknote_params
      params.require(:bknote).permit(:book_id, :name, :page, :unit, :note, :practice, :referdoc, :referurl)
    end
end
