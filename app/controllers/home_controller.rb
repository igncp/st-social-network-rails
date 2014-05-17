class HomeController < ApplicationController
  def index
    if user_signed_in?
        @messages = Message.where destination_id: current_user.id
        render 'user/dashboard'
    end
  end
end