class UsersController < ApplicationController
      before_action :require_login, except: [:new, :create]
      before_action :require_correct_user, only: [:show, :edit, :update, :destroy]

      def new
      end

      def create
            user = User.create user_params
            if user.save
                  session[:user_id] = user.id
                  redirect_to "/users/#{user.id}"
            else
                  flash[:errors] = user.errors.full_messages
                  redirect_to "/"
            end
      end

      def show
            @user = User.find(params[:id])
            @secrets = Secret.all
            @user_likes = @user.likes
            @user_secrets = Secret.where(user_id:session[:user_id])
      end

      def user_params
            params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end

      def logout
            redirect_to "/sessions/new"
      end
end
