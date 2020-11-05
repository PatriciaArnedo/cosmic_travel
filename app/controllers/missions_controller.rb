class MissionsController < ApplicationController
    def new
        @mission = Mission.new
    end

    def create
        @mission = Mission.new(mission_params)
        if @mission.save
            redirect_to scientist_path(@mission.scientist_id)
        else 
            flash[:errors] = @mission.errors.full_messages
            redirect_to new_mission_path
        end
    end

    private

    def mission_params
        params.require(:mission).permit(:name, :scientist_id, :planet_id)
    end
end