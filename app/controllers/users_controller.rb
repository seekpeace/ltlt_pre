class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :index]
  before_action :correct_user,   only: [:edit, :update]

  def index
    # @users = User.all.paginate(page: params[:page])
    @users = User.all
  end

  def show
    @homes_without_bids = []
    @homes_with_bids = []
    @user = User.find(params[:id])
    @bids = Bid.where(user_id: params[:id])

    @bids.each do |bid|
      if ((bid["value"] != nil) || (bid["value"] != 0))
        @homes_with_bids.push(Home.find(bid["home_id"]))
      else
        @homes_without_bids.push(Home.find(bid["home_id"]))
      end
    end
  end

  def new
    @user = User.new
    # @test = "TEST"
    # byebug
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

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
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
