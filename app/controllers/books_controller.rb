class BooksController < ApplicationController
  def index
    # 新規投稿のデータを格納
    @book = Book.new
    # モデルBookの全データを下記に格納
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      flash[:notice] = "The book was successfully created."
      redirect_to book_path(@book.id)
    else
      @books = Book.all
      render :index
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
    flash[:notice] = "The book was successfully destroyed."
    redirect_to  books_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
