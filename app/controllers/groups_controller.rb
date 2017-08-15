class GroupsController < ApplicationController
before_action :set_params, :only => [:show, :edit, :update, :destroy]
before_action :authenticate_user! , only: [:new]
  def index 
    @groups = Group.all
  end

  def new
    @group = Group.new
  end 

  def create
    @group = Group.new(group_params)
    if @group.save
      
      redirect_to groups_path
    else
      redirect_to :new
    end
  end
  def edit

  end  
  
  def show

  end
   
  def update
    @group.update(group_params)
    redirect_to groups_path, notice: "Update Success"
  end

  def destroy
    @group.destroy

    redirect_to groups_path    

  end



 private

    def set_params
      @group = Group.find(params[:id])
    end

    def group_params
      params.require(:group).permit(:title, :description)
    end





end
