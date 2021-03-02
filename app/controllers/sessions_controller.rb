class SessionsController < ApplicationController
  # before_action :require_login

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
    else
      return redirect_to '/login'
    end
  end
  

  def index
    
  end

  def new
    
  end

  def destroy
    session.delete :name
  end

  private

  def require_login
    # return redirect_to(action:'new' ,controller: 'session') unless session[:name]
  end
end
