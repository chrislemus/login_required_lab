class SecretsController < ApplicationController
  before_action :require_login

  def show
    
  end

  def new
    
  end

  private

  def require_login
    return redirect_to '/login' unless session[:name]
  end
end
