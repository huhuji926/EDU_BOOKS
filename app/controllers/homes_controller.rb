class HomesController < ApplicationController
	def index
		@books = Book.all
	end
	
	def about
		
	end
end
