class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def index
    @blogs=Blog.where('status' => 'publish')
    if current_user.admin?
      @blogs=Blog.order(:created_at)
    end
  end

  def blog_post
    @blogs=Blog.where('user_id = ?', current_user.id)
  end

  def blog_create
    @blog=Blog.new
  end

  def myblogs
    @blogs=Blog.all
  end

  def post
    @blog = Blog.new(blog_params)
    @blog.user_id=current_user.id
    respond_to do |format|
      if @blog.save
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
        reder
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  def show_users

  end

end
