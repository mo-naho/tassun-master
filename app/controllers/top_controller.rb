class TopController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @tasks = Task.all.order("start_time ASC")
    @groups = Group.all
  end
end
