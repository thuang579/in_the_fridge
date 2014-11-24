class FoodsController < ApplicationController

	def new
		@food = Food.new
	end

	def index
		@foods = Food.all
	end

	def show
		@food = Food.find(params[:id])
		#only want one instance
		#get the instnae from the database with ID, Find, findby
		#must be a way to pass it with the ID
	end

	def create
		@food = Food.new(food_params)

		if @food.save
			redirect_to '/'
			#do something
		else
			render 'new'
			#same as render :new
			#do something else
		end

	end

	def destroy

		
	end

	private

	def food_params
		params.require(:food).permit(:name, :expiration, :food_type)
	end



	#foods = HTTParty('food_api')
end