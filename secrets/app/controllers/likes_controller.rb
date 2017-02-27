class LikesController < ApplicationController
      def index
      end

      def create
            @secret = Secret.find(params[:id])
            @user = current_user

            if !@secret.users_liked.include? @user
            Like.create(user:@user, secret: @secret)
            end

            redirect_to :back
      end

      def destroy
            @secret = Secret.find(params[:id])
            @user = current_user

            Like.find_by(user: @user, secret: @secret).destroy

            redirect_to :back
      end
end
