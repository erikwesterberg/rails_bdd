class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
<<<<<<< HEAD
    @articles = Article.new
end
=======
    @article = Article.new
  end
>>>>>>> 03f6adfd1e3aca5ef4c2553dc53bb15d65a5410b
end
