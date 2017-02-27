class SecretsController < ApplicationController
      before_action :require_login, only: [:index, :create, :destroy]

      def index
            @secrets = Secret.all
      end

      def create
            @user = User.find(current_user.id)
            @user.secrets.create(content: params[:secret])
            redirect_to :back
      end

      def destroy
            secret = Secret.find(params[:id])
            secret.destroy if secret.user == current_user
            redirect_to "/users/#{current_user.id}"
      end
end
