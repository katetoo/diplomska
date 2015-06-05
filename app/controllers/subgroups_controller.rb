class SubgroupsController < ApplicationController
    
    def index
        @subgroups = Subgroup.all
    end
    
    def show
        @subgroup = Subgroup.find(params[:id])
        @substitutions = @subgroup.substitutions
    end
    
    def new
        @subgroup = Subgroup.new
        @groups= Group.all
    end
    
    def create
        @subgroup = Subgroup.new(subgroup_params)
        if @subgroup.save
            flash[:success] = "Подгрупата е успешно креирана"
            redirect_to subgroups_path
        else
            render :new
        end
    end
    
    def edit
        @subgroup=Subgroup.find(params[:id])
    end
    
    def update
        @subgroup=Subgroup.find(params[:id])
        if @subgroup.update(subgroup_params)
            flash[:success] = "Подгрупата е успешно изменета."
            redirect_to subgroup_path(@subgroup)
        else
            render :edit
        end
    end
    
    def destroy
        @subgroup=Subgroup.find(params[:id])
        @subgroup.destroy
        flash[:success] = "Подгрупата е избришана."
         redirect_to subgroups_path
    end
    
    private
    
    def subgroup_params
        params.require(:subgroup).permit(:ime_podgrupa, :group_id)
    end
    
end