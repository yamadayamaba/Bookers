class BooksController < ApplicationController

def index
    @books = Book.all
end

def edit
    @book = Book.find(params[:id])
end

def update
  book = Book.find(params[:id])
  Book.update(book_params)
  redirect_to book_path(book)
end


def show
  @book = Book.find(params[:id])
end

def delete
  book = Book.find(params[:id])
  book.destroy
  redirect_to "/books"

end

def new
    @book = Book.new
end

def create
  @book = Book.new(book_params)
  if @book.save   
  redirect_to '/'
  else
  render :new
  end
end

private

def book_params
    params.require(:book).permit(:title, :body)
end

end
