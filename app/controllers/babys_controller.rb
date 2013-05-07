class BabysController < ApplicationController
	def index
		@offers = Offers.all
	end

	def new
	end

	def create
		@offers = Offers.new
		@offers.name = params[:name]
		@offers.experience = params[:experience]
		@offers.when = params[:when]
		@offers.howlong = params[:howlong]
		@offers.phone = params[:phone]
		@offers.notes = params[:notes]
		@offers.save
		redirect_to "/babys"
	end

	def show
		@offers = Offers.find_by_id(params[:id])
	end

	def edit
		@offers = Offers.find_by_id(params[:id])
	end

	def update
		@offers = Offers.find_by_id(params[:id])
		@offers.name = params[:name]
		@offers.experience = params[:experience]
		@offers.when = params[:when]
		@offers.howlong = params[:howlong]
		@offers.phone = params[:phone]
		@offers.notes = params[:notes]
		@offers.save
		redirect_to "/babys"
	end

	def destroy
		@offers = Offers.find_by_id(params[:id])
		@offers.destroy
		redirect_to "/babys"
	end

end
