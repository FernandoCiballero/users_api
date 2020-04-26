class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    users = User.all
    render json: UserSerializer.new(users).serialized_json
  end

  # GET /users/:id
  def show
    render json: UserSerializer.new(@user).serialized_json
  end

  # POST /users
  def create 
    user = User.new(user_params)
    if user.save
      render json: UserSerializer.new(user).serialized_json
    else
      render json: {error: user.errors.messages}, status: :unprocessable_entity
    end
  end

  # PUT /users/:id
  def update
    if @user.update(user_params)
      render json: UserSerializer.new(@user).serialized_json
    else
      render json: {error: @user.errors.messages}, status: :unprocessable_entity
    end
  end

  # DELETE /users/:id
  def destroy
    if @user.destroy
      head :no_content
    else
      render json: {error: @user.errors.messages}, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
