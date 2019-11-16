class BooksController < ApplicationController

     def new
         @book = Book.new
         @books = Book.all
    end

    def show
        @booK = Book.find(params[:id])
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        book = Book.find(params[:id])
        book.update(book_params)
        redirect_to book_path(book.id)
    end

    def create
        @books = Book.all
        # ストロングパラメーターを使用
        @book = Book.new(book_params)
        # DBへ保存する
        if @book.save
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
        book.destroy
        redirect_to books_path
    end

    private

    def book_params
        params.require(:book).permit(:title, :body)

    end

end
