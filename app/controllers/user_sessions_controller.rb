class UserSessionsController < ApplicationController
  filter_resource_access

  def new
    @user_session = UserSession.new #overridding instance variable setting by declarative authorization
  end

  def create
    if @user_session.save
      flash[:notice] = "Successfully logged in"
      respond_to do |format|
        format.html { redirect_to root_path }
        format.xml { head :status => :created, :location => root_path }
      end
    else
      flash[:alert] = "Unable to log in"
      render :action => 'new'
    end
  end

  def destroy
    @user_session.destroy
    reset_session
    flash[:notice] = "Successfully logged out"
    redirect_to root_path
  end

  protected
  def new_user_session_from_params
    @user_session = UserSession.new(params[:user_session])
  end

  def load_user_session
    @user_session = UserSession.find
  end
end