class ChatsController < ApplicationController
require "opentok"

def index
	@chats = Chat.order("created_at DESC")
end

def new
	@chat = Chat.new
end

def create
	session = opentok.create_session :media_mode => :relayed
	token = session.generate_token
end

def show
	@chat = Chat.find(params[:id])
end

private
	def chat_params
    	params.require(:chat).permit(:sessionId,:user_id,:token)
  	end

end
