class MessageGroupsController < ApplicationController
	def index
		render json: MessageGroup.all.pluck(:name)
	end

	def create
		message_group = MessageGroup.create(params)
	end
end
