class BooksController < ApplicationController

     def new
         @book = Book.new
         @books = Book.all
    end

    def show
        @booK = Book.find(params[:id])
        flash[:show] = 'Book was successfully created.'
    end

    def edit
        @book = Book.find(params[:id])
        flash[:success] = 'Book was successfully updated.'

    end

    def update
        book = Book.find(params[:id])
        if  book.update(book_params)
        flash[:edit] = "Book was successfully updated."
        redirect_to book_path(book.id)
    end
    end

    def create
        @books = Book.all
        # ストロングパラメーターを使用
        @book = Book.new(book_params)
        # DBへ保存する
        if @book.save
           flash[:notice] = "Book was successfully created."
        # トップ画面へリダイレクト
        redirect_to book_path(@book.id)
    else
        render 'index'
    end

    end

    def index
        @books = Book.all #これで全ての投稿を取り出して表示する
        @book = Book.new
    end

    def destroy
        book = Book.find(params[:id])
        if book.destroy
        flash[:destroy] = "Book was successfully destroyed."
        redirect_to books_path
    end
    end

    private

    def book_params
        params.require(:book).permit(:title, :body)

    end

end
