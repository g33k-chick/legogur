class LegosetsController < ApplicationController

	def index
		@legosets = Legoset.all
	end

	def show
		@legoset = Legoset.find(params[:id])
	end

	def new
		@legoset = Legoset.new
	end

	def create
		@legoset = Legoset.new(legoset_params)
		if @legoset.save
			redirect_to legosets_url
		else
		render :new
		end
	end

	def edit
		@legoset = Legoset.find(params[:id])
	end

	def update
		@legoset = Legoset.find(params[:id])

		if @legoset.update_attributes(legoset_params)
			redirect_to "/legosets/#{@legoset.id}"
		else
			render :edit
		end
	end

	private

	def legoset_params
		params.require(:legoset).permit(:name, :product_type, :pieces, :minifigures, :url)
	end

end