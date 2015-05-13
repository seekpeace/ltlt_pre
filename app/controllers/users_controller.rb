class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :index]
  before_action :correct_user,   only: [:edit, :update]

  def index
    @users = User.all.paginate(page: params[:page])
    # @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    # @test = "TEST"
    # byebug
  end

  def create
    @user = User.(params[:user])
    if @user.save

    else
      render 'new'
    end
  end

  def create
  @user = User.new(user_params)
  if @user.save
    log_in @user
    flash[:success] = "Welcome to LTLT!"
    redirect_to @user
  else
    render 'new'
  end

  def edit
    # @user = User.find(params[:id])
    #not needed by addint before_action :correct_user,
  end

  def update
    # @user = User.find(params[:id])
    #not needed by addint before_action :correct_user,
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

end

private

    def user_params
      params.require(:user).permit(:name, :email, :number, :password,
                                   :password_confirmation)
    end

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

end

#   users GET    /users(.:format)          users#index
#          POST   /users(.:format)          users#create
# new_user GET    /users/new(.:format)      users#new
# edit_user GET    /users/:id/edit(.:format) users#edit
#     user GET    /users/:id(.:format)      users#show
#          PATCH  /users/:id(.:format)      users#update
#          PUT    /users/:id(.:format)      users#update
#          DELETE /users/:id(.:format)      users#destroy
