class FacebookPostsController < ApplicationController
  def index
    @posts = FacebookPost.order(fb_updated_time: 'desc').limit(50)
  end

  def reload
    FacebookPost.reload
    redirect_to(action: 'index')
    #render :index #так не оновляло сторінку))
  end
end