class BlogsController < ApplicationController
  layout 'blogs'
  def index
    @archives = Archive.all
    @blogs = Blog.where(:published => true)
    @tags = Tag.all

    #code
  end

  def new
    @blog = Blog.new
    #code
    #Time.parse(t.to_s).strftime('%Y-%m-01 00:00:00')
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
    #code
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render 'edit'
    end
    #code
  end

  def show
    @blog = Blog.find(params[:id])
    #code
  end

  def edit
    @blog = Blog.find(params[:id])
    #code
  end

  def destory
    @blog = Blog.find(params[:id])
    @blog.destory
    redirect_to blogs_path
    #code
  end

  private
    def blog_params
      params.require(:blog).permit(:title, :content)
    end

end
