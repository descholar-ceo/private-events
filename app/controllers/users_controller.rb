class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @past_events = @user.attended_event.all_past_events
    @upcoming_events = @user.attended_event.all_upcoming_events
  end
end
