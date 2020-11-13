class GroupsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.create group_params
    if @group.save then
      redirect_to '/top'
    else
      render 'new'
    end
  end

  def edit
    @msg = params[:id] + "を編集します。"
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update group_params
    if @group.save then
      redirect_to '/top'
    else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    redirect_to '/groups' 
  end

  private 
  def group_params
    params.require(:group).permit(:group_name, {:user_ids=> []})
  end
end
