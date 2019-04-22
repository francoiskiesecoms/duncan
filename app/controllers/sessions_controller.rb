class SessionsController < ApplicationController

  def schedule
    @user = current_user
  end

  def upcoming
    @classes = current_user.upcoming_classes
  end

  def completed
    @classes = current_user.completed_classes
  end



end
