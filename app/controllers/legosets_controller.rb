class LegosetsController < ApplicationController

	def index
		@legosets = Legoset.all
	end

	def show
		@legoset = Legoset.find(params[:id])
	end

	def new
	end

	def create
		render :text => "Saving the Lego set.  URL: #{params[:url]}, Name: #{params[:name]}, Type: #{params[:product_type]}"
	end
end
