class UsersController < ApplicationController

  def show
    @user = User.last.stories
    @story = Story.all
    render :show
  end

end
