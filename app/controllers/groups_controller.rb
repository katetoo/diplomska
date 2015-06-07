class GroupsController < ApplicationController 
    
    def index
        @groups = Group.all
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
    
end