class ArchivesController < ApplicationController
  layout 'blogs'
  def show
    @blogs = Archive.find(params[:id]).blogs
    #code
  end

end
