class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  before_action :authenticate_admin, only: :index

  def index
    @users = User.all

    render json: @users
  end


  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:email)
    end

    def authenticate_admin
      unless params[:api_key] == ENV['ADMIN_API_KEY']
        render json: { errors: "Not authenticated" }, status: :unauthorized
      end
    end
end
