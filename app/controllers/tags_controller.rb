class TagsController < ApplicationController
  layout 'blogs'
  def index
  end

  def show
    @tag =  ActsAsTaggableOn::Tag.find(params[:id])
    @blogs = Blog.tagged_with(@tag.name)
  end
end
