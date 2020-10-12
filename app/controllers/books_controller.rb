class BooksController < ApplicationController
	def index
		@books = Book.all
		@user = current_user
	end

	def show
		@book = Book.find(params[:id])
		@user = @book.user
	end

	def create
		@user = current_user
		@book = Book.new(book_params)
		@book.user_id = current_user.id
		if @book.save
			redirect_to book_path(@book.id)
			flash[:success] = "投稿されました！"
	    else
	    	redirect_to book_path(@book.id)
			flash[:failure] = "投稿に失敗しました。"
		end
	end

	def edit
		@book = Book.find(params[:id])
		if @book.user_id != current_user.id
			redirect
	end
end
