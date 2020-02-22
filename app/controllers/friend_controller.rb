class FriendController < ApplicationController
  def index
      @friend_lists = Student.all
  end

  def show
    def show
      @friend = Student.find(params[:id])
    end
  end
end
