class ItemsController < ApplicationController
  def tick
    render json: params[:items]
  end
end
