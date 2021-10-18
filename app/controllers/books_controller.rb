class BooksController < ApplicationController
  def index
    @book = Book.all
  end
  
  def new
    @blog = Blog.new
  end

  def show
  end
  
  def create
  end

  def edit
  end
end
