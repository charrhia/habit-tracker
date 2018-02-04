class Api::V1::InputsController < ApplicationController
  def index
    render json: Input.all
  end
end
