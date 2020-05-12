class RegistrationsController < ApplicationController
  include AuthTokenConcern

  def create
    user = User.create!(
      email: params['email'],
      password: params['password'],
      auth_token: unique_auth_token
    )

    if user
      session[:user_id] = user.id
      render json: { status: :created }
    else
      render json: { status: 500 }
    end
  end
end
