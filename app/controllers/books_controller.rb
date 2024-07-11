class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "The book was successfully created."
      redirect_to book_path(@book.id)
    else
      render 'books/index'
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
    # book.save
    # redirect_to book_path(book.id)
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    flash[:notice] = "The book was successfully updated."
    redirect_to book_path(book.id)
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to  books
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
