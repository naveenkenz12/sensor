class DustbinsController < ApplicationController

	def new

	end
	
	def show
		msg = {:status => "ok"}
		render :json => msg
	end

end