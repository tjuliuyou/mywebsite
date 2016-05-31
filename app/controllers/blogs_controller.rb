class BlogsController < ApplicationController
  layout 'blogs'
  def index
    @archives = Archive.all
    #@blogs = Blog.where(:published => true)
    @blogs = Blog.all
    @tags = ActsAsTaggableOn::Tag.most_used(10)

    #code
  end

  def new
    @blog = Blog.new
  end

  def create
    archive = Archive.last
    if archive.nil? || archive.end_time > Time.now
      archive = Archive.new(start_time: Date.today.at_beginning_of_month.to_s,
       end_time: Date.today.at_end_of_month.to_s)
      if !archive.save
        render 'new'
        return
      end
    end

    @blog = archive.blogs.build(blog_params)

    if @blog.save
      redirect_to @blog
    else
      render 'new'
    end
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
      params.require(:blog).permit(:title, :content,:tag_list)
    end

end
