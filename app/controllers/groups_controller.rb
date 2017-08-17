class GroupsController < ApplicationController
before_action :set_params, :only => [:show, :edit, :update, :destroy]
before_action :authenticate_user! , only: [:new, :create, :edit, :update, :destroy]
before_action :checkout_permission, only: [:edit, :update, :destroy]  
  def index 
    @groups = Group.all
  end

  def new
    @group = Group.new
  end 

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    if @group.save
      
      redirect_to groups_path
    else
      redirect_to :new
    end
  end
  def edit
   
  
 
  end  
  
  def show
    @group = Group.find(params[:id])
    @posts = @group.posts.recent.paginate(:page => params[:page], :per_page = > 5)
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

    def checkout_permission
      if current_user != @group.user
        redirect_to root_path, alert: "You have no permission."
      end
    end



end
