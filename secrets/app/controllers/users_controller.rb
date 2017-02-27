class UsersController < ApplicationController
      before_action :require_login, except: [:new, :create]
      before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

      def new
      end

      def create
            user = User.create user_params
            if user.save
                  redirect_to "/users/#{user.id}"
            else
                  flash[:errors] = user.errors.full_messages
                  redirect_to "/sessions/new"
            end
      end

      def show
            @user = User.find(params[:id])
      end

      def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
