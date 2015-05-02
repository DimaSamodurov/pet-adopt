class HomeController < ApplicationController
  def index
    @categories = Category.all
    @news = News.all
  end
end
