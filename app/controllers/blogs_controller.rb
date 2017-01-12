class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    if params[:search]
      puts "Search params=> |#{params[:search]}|"
      @blogs = Blog.search(params[:search]).paginate(:page => params[:page], :per_page => 10).order('id DESC')
      # puts Blog.search(params[:search]).class   # Blog::ActiveRecord_Relation
      # puts Blog.search(params[:search]).paginate(:page => params[:page], :per_page => 10).order('id DESC').class
    else
      puts "There are no parems!"
      @blogs = Blog.paginate(:page => params[:page], :per_page => 10).order('id DESC') #:all, :order => "title ASC"
    end

    # conditions = []
    # [:mail_from, :mail_to, :subject, :attachment, :domain, :ip, :location, :date, :mailer].each{
    #   |attr| conditions << Employee.send(:sanitize_sql, ["#{attr} LIKE ?", "%#{params[attr]}%"]) unless params[attr].blank? }
    # conditions = conditions.any? ? conditions.collect { |c| "(#{c})" }.join(' AND ') : nil
    # @emails = Email.where(conditions).order("date DESC")
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blog_params
      params.require(:blog).permit(:title, :pathw, :pathl, :category, :secnario, :note, :level, :tested, :referto)
    end
end
