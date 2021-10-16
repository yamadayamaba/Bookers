class BooksController < ApplicationController

def index
    @books = Book.all
end

def edit
end

def show
end

def delete
end

def new
    @book = Book.new
end

def create
end

def update
end

def private
end

end
