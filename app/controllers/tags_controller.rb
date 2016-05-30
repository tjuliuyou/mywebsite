class TagsController < ApplicationController
  layout 'blogs'
  # def index
  # end

  def show

    @blogs = Tag.find(params[:id]).blogs
    #code
  end

end
