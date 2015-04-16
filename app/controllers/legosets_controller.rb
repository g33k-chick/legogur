class LegosetsController < ApplicationController

	def index
		@Legosets = Legoset.all
	end

end
