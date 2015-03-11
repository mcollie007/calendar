class DaysController < ApplicationController
	before_action :require_user
    
    def index
       @days = Day.all 
    end
    
    def show
        @day = Day.find(params[:id])
        @events = @day.events
    end
end
