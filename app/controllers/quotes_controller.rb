class QuotesController < ApplicationController
	def index
		@quote = Quote.order("RANDOM()").first
	end

	def create
		@quote = Quote.create(quote_params)

		if @quote.invalid?
			flash[:error] = "<strong class='error h3'>SORRY!</strong> The data you entered is invalid and could not be saved."
		end

		redirect_to root_path
	end

	def about
		
	end

	private

	def quote_params
		params.require(:quote).permit(:saying, :movie_reference)
	end

end
