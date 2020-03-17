class Api::V1::FriendController < ApplicationController
  def index
    @friend_lists = Student.all
    render json: @friend_lists
  end

  def show
    @friend = Student.find(params[:id])

    render json: @friend
  end
end