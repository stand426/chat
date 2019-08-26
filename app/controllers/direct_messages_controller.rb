class DirectMessagesController < ApplicationController
	def index
		render json: current_user.received_direct_messages
	end

	def create
	end
end
