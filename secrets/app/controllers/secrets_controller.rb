class SecretsController < ApplicationController
      before_action :require_login, only: [:index, :create, :destroy]

      def index
            @secrets = Secret.all
      end

      def create
            user = User.find(session[:user_id])
            Secret.create(content: params[:content], user: user)
            redirect_to "/users/#{current_user.id}"
      end

      def destroy
            secret = Secret.find(params[:id])
            secret.destroy if secret.user == current_user
            redirect_to "/users/#{current_user.id}"
      end

      def like
            user = User.find(session[:user_id])
            secret = Secret.find(params[:id])
            Like.create(user: user, secret: secret)
            redirect_to "/users/#{current_user.id}"
      end

      def unlike
            user = User.find(session[:user_id])
            secret = Secret.find(params[:id])
            Like.where(user_id:session[:user_id], secret_id:params[:id]).destroy_all
            redirect_to "/users/#{current_user.id}"
      end

      def delete
            user = User.find(session[:user_id])
            Secret.find(params[:id]).destroy
            redirect_to "/users/#{current_user.id}"
      end
end
