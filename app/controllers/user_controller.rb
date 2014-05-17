class UserController < ApplicationController
    before_action :authenticate_user!
    before_filter :set_user, only: [:profile, :account]

    def account; end

    def profile; end

    def profile_save
        current_user.update_attributes!(user_params)
        redirect_to action: :profile
    end

    def account_save
        current_user.update_attributes!(user_params)
        redirect_to action: :account
    end

    def search
        @angularAppName = 'Search'
        @users = User.where.not(id: current_user.id)
    end

    def users_search
        q = "%#{params[:text]}%"
        result = User.where("name like ? or location like ? and id != ?", q, q, current_user.id)
        puts result.count
        render json: result
    end

    def lookout
        @user = User.find_by(user_name: params[:user_name])
        @messages = Message.where destination_id: @user.id
    end

    private

    def set_user
        @user = current_user
    end
    
    def user_params
        params.require(:user).permit(:name, :age, :bio, :gender, :location, :email)
    end
end
