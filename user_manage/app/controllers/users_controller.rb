class UsersController < ApplicationController
  def index
        @user = User.all
  end

  def show
        @user = User.find(params[:id])
  end

  def new
  end

  def edit
        @user = User.find(params[:id])
  end

  def create
        User.create(first_name: params[:f_name], last_name: params[:l_name], password: params[:password], email: params[:email])

        redirect_to "/"
  end

  def update
        User.find(params[:id]).update(first_name: params[:f_name], last_name: params[:l_name], password: params[:password], email: params[:email])
        redirect_to "/"
  end

  def delete
        User.find(params[:id]).destroy
        redirect_to "/"
  end
end
