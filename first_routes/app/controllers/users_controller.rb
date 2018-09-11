class UsersController < ApplicationController
  def index

    user = User.all
    if user
      render json: user
    else
      render json: user.errors.full_messages, status: 422
    end
  end

  def create
    user = User.new(params.require(:user).permit(:name, :email))

    if user.save
      render json: params
    else
      render json: user.errors.full_messages, status: "Wronnnggg"
    end
  end

  def show
    p "in show method ZZZZZ"
    user = User.find(params[:id])
    render json(user)
  end
end
