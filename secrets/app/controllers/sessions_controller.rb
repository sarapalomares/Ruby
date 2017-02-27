class SessionsController < ApplicationController

      def index
      end

      def new
            if session[:user_id]
                  session[:user_id] = nil
            end
      end

      def create
            @user = User.find_by_email(params[:user][:email])
            if @user and @user.authenticate(params[:user][:password])
                  session[:user_id] = @user.id
                  redirect_to "/users/#{@user.id}"
            else
                  flash[:errors] = ["Invalid Credentials"]
                  redirect_to "/sessions/new"
            end
      end
end
