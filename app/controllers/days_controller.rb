class DaysController < ApplicationController

before_action :require_user, :restrict => [:index, :show]  

 def index
  @days = Day.all
 end

 def show
  @day = Day.find(params[:id])
  @events = @day.events
 end 

end
