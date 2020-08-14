class WelcomeController < ApplicationController
  def index
    render json: { status: 200, message: "Scale API" }
  end
end
