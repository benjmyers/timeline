# static_controller.rb
class StaticController < ApplicationController
  def show
    render params[:page]
  end
end