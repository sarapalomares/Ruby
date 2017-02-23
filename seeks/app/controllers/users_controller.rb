class UsersController < ApplicationController
      before_action :require_login, except: [:new, :create]
      before_action :require_correct_user, only: [:show, :edit, :update, :destroy]
end
