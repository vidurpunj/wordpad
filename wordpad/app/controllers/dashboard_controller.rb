class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @blogs=Blog.where('status' => 'publish')
    if current_user.admin?
      @blogs=Blog.order(:created_at)
    end
  end

  #List all users
  def show_users

  end

  def preview

  end


end
