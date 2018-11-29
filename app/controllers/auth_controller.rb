class AuthController < ApplicationController
  skip_before_action :authorized, only: [:create, :persist]

  def create
    @user = User.find_by(username: user_login_params[:username])

    if @user && @user.authenticate(user_login_params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end

  def show
    token = request.headers["Authorization"]
    user = User.find_by(id: token)

    if user
      render json: { user: UserSerializer.new(@user)}
    else
      render json: {error:'Invalid token'}, status: 401
    end
  end

  def persist
    # token = request.headers["Authorization"]
    # begin
    #   payload = JWT.decode(token, ENV['tokemon'], true)
    # rescue JWT::DecodeError
    #   nil
    # end
    # byebug
    if(current_user)
      token = encode_token({ user_id: current_user.id })
      render json: { user: UserSerializer.new(current_user), jwt: token }
    else
      render json: {
        error: "Invalid token"
      }
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end
