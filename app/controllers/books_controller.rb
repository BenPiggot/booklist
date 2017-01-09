class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:book])
    render layout: false
  end

  def update 
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to books_path(@book)
  end

  def create
    @list = current_user.lists.find_by_id(params[:list_id].to_i)
    @list.books.create(book_params)
    redirect_to list_books_path
  end

  def show 
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to list_books_path
  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :description, :topic, :isbn, :image)
  end

end