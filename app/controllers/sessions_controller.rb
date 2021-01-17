# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(name: params[:session][:name])
    if user&.authenticate(params[:session][:password])
      log_in user
      flash[:success] = 'Successfully logged in!'
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid name/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to login_path
  end
end
