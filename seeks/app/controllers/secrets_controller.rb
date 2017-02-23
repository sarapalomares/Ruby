class SecretsController < ApplicationController
      before_action :require_login, only: [:index, :create, :destroy]

      def destroy
          secret = Secret.find(params[:id])
          secret.destroy if secret.user == current_user
          redirect_to "/users/#{current_user.id}"
      end
end
