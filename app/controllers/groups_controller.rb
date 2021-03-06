class GroupsController < ApplicationController 
    before_action :require_admin, only: [:edit, :update]
    
    def index
        @groups = Group.all.paginate(page: params[:page], per_page: 6)
    end
    
    def new
      @group = Group.new
    end
    
    def create
        @group = Group.new(group_params)
        if @group.save
          flash[:success]="Групата е успешно креирана."
          redirect_to groups_path
        else
          render :new
        end
    end
    
    def show
      @group = Group.find(params[:id])
      @subgroups = @group.subgroups
    end
    
    def edit
        @group=Group.find(params[:id])
    end
    
    def update
        @group=Group.find(params[:id])
        if @group.update(group_params)
            flash[:success] = "Групата е успешно изменета."
            redirect_to groups_path
        else
            render :edit
        end
    end
    
    def destroy
      @group=Group.find(params[:id])
      @group.destroy
      flash[:success] = "Групата е избришана."
      redirect_to groups_path
    end
    
    private
      def group_params
        params.require(:group).permit(:ime_grupa, :subgroup_id, :medicament_id)
      end
      
      def require_admin
        if current_user.admin != true
          flash[:danger] = "Промена може да направи само администратор"
          redirect_to groups_path
        end
      end
    
end